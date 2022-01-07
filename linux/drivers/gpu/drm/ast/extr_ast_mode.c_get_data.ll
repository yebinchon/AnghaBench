; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_get_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_get_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_i2c_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ast_private* }
%struct.ast_private = type { i32 }

@AST_IO_CRTC_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @get_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_data(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ast_i2c_chan*, align 8
  %4 = alloca %struct.ast_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.ast_i2c_chan*
  store %struct.ast_i2c_chan* %10, %struct.ast_i2c_chan** %3, align 8
  %11 = load %struct.ast_i2c_chan*, %struct.ast_i2c_chan** %3, align 8
  %12 = getelementptr inbounds %struct.ast_i2c_chan, %struct.ast_i2c_chan* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ast_private*, %struct.ast_private** %14, align 8
  store %struct.ast_private* %15, %struct.ast_private** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %17 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %18 = call i32 @ast_get_index_reg_mask(%struct.ast_private* %16, i32 %17, i32 183, i32 32)
  %19 = ashr i32 %18, 5
  %20 = and i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %47, %1
  %22 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %23 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %24 = call i32 @ast_get_index_reg_mask(%struct.ast_private* %22, i32 %23, i32 183, i32 32)
  %25 = ashr i32 %24, 5
  %26 = and i32 %25, 1
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %39

33:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  %34 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %35 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %36 = call i32 @ast_get_index_reg_mask(%struct.ast_private* %34, i32 %35, i32 183, i32 32)
  %37 = ashr i32 %36, 5
  %38 = and i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %33, %30
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 5
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  %46 = icmp slt i32 %44, 65536
  br label %47

47:                                               ; preds = %43, %40
  %48 = phi i1 [ false, %40 ], [ %46, %43 ]
  br i1 %48, label %21, label %49

49:                                               ; preds = %47
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  ret i32 %54
}

declare dso_local i32 @ast_get_index_reg_mask(%struct.ast_private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
