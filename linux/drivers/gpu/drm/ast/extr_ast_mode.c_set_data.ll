; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_set_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_set_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_i2c_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ast_private* }
%struct.ast_private = type { i32 }

@AST_IO_CRTC_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @set_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_data(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ast_i2c_chan*, align 8
  %6 = alloca %struct.ast_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.ast_i2c_chan*
  store %struct.ast_i2c_chan* %11, %struct.ast_i2c_chan** %5, align 8
  %12 = load %struct.ast_i2c_chan*, %struct.ast_i2c_chan** %5, align 8
  %13 = getelementptr inbounds %struct.ast_i2c_chan, %struct.ast_i2c_chan* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.ast_private*, %struct.ast_private** %15, align 8
  store %struct.ast_private* %16, %struct.ast_private** %6, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %39, %2
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 65536
  br i1 %19, label %20, label %42

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 0, i32 1
  %26 = shl i32 %25, 2
  store i32 %26, i32* %8, align 4
  %27 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %28 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %27, i32 %28, i32 183, i32 241, i32 %29)
  %31 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %32 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %33 = call i32 @ast_get_index_reg_mask(%struct.ast_private* %31, i32 %32, i32 183, i32 4)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %20
  br label %42

38:                                               ; preds = %20
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %17

42:                                               ; preds = %37, %17
  ret void
}

declare dso_local i32 @ast_set_index_reg_mask(%struct.ast_private*, i32, i32, i32, i32) #1

declare dso_local i32 @ast_get_index_reg_mask(%struct.ast_private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
