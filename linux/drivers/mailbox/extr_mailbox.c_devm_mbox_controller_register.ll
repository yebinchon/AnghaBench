; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox.c_devm_mbox_controller_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox.c_devm_mbox_controller_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mbox_controller = type { i32 }

@__devm_mbox_controller_unregister = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_mbox_controller_register(%struct.device* %0, %struct.mbox_controller* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mbox_controller*, align 8
  %6 = alloca %struct.mbox_controller**, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.mbox_controller* %1, %struct.mbox_controller** %5, align 8
  %8 = load i32, i32* @__devm_mbox_controller_unregister, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mbox_controller** @devres_alloc(i32 %8, i32 8, i32 %9)
  store %struct.mbox_controller** %10, %struct.mbox_controller*** %6, align 8
  %11 = load %struct.mbox_controller**, %struct.mbox_controller*** %6, align 8
  %12 = icmp ne %struct.mbox_controller** %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %31

16:                                               ; preds = %2
  %17 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %18 = call i32 @mbox_controller_register(%struct.mbox_controller* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.mbox_controller**, %struct.mbox_controller*** %6, align 8
  %23 = call i32 @devres_free(%struct.mbox_controller** %22)
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %31

25:                                               ; preds = %16
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.mbox_controller**, %struct.mbox_controller*** %6, align 8
  %28 = call i32 @devres_add(%struct.device* %26, %struct.mbox_controller** %27)
  %29 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %30 = load %struct.mbox_controller**, %struct.mbox_controller*** %6, align 8
  store %struct.mbox_controller* %29, %struct.mbox_controller** %30, align 8
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %25, %21, %13
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.mbox_controller** @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @mbox_controller_register(%struct.mbox_controller*) #1

declare dso_local i32 @devres_free(%struct.mbox_controller**) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.mbox_controller**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
