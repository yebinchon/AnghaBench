; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_dp501.c_wait_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_dp501.c_wait_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ast_private = type { i32 }

@AST_IO_CRTC_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ast_private*)* @wait_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_ack(%struct.ast_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ast_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ast_private* %0, %struct.ast_private** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %20, %1
  %7 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %8 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %9 = call i32 @ast_get_index_reg_mask(%struct.ast_private* %7, i32 %8, i32 210, i32 255)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 128
  store i32 %11, i32* %4, align 4
  %12 = call i32 @udelay(i32 100)
  br label %13

13:                                               ; preds = %6
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  %19 = icmp slt i32 %17, 1000
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i1 [ false, %13 ], [ %19, %16 ]
  br i1 %21, label %6, label %22

22:                                               ; preds = %20
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 1000
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %27

26:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @ast_get_index_reg_mask(%struct.ast_private*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
