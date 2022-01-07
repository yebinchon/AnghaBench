; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-pdc-mailbox.c_pdc_mb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-pdc-mailbox.c_pdc_mb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdc_state = type { %struct.mbox_controller, %struct.TYPE_3__* }
%struct.mbox_controller = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32*, %struct.device* }
%struct.TYPE_4__ = type { %struct.pdc_state* }
%struct.device = type { i32 }
%struct.TYPE_3__ = type { %struct.device }

@pdc_mbox_chan_ops = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Failed to register PDC mailbox controller. Error %d.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pdc_state*)* @pdc_mb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdc_mb_init(%struct.pdc_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pdc_state*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mbox_controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pdc_state* %0, %struct.pdc_state** %3, align 8
  %8 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %9 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %13 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %12, i32 0, i32 0
  store %struct.mbox_controller* %13, %struct.mbox_controller** %5, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %16 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %15, i32 0, i32 6
  store %struct.device* %14, %struct.device** %16, align 8
  %17 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %18 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %17, i32 0, i32 5
  store i32* @pdc_mbox_chan_ops, i32** %18, align 8
  %19 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %20 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %23 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.TYPE_4__* @devm_kcalloc(%struct.device* %21, i32 %24, i32 8, i32 %25)
  %27 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %28 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %27, i32 0, i32 4
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %28, align 8
  %29 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %30 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %29, i32 0, i32 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %1
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %73

36:                                               ; preds = %1
  %37 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %38 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  %39 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %40 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %39, i32 0, i32 2
  store i32 1, i32* %40, align 8
  %41 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %42 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %41, i32 0, i32 3
  store i32 1, i32* %42, align 4
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %58, %36
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %46 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load %struct.pdc_state*, %struct.pdc_state** %3, align 8
  %51 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %52 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %51, i32 0, i32 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store %struct.pdc_state* %50, %struct.pdc_state** %57, align 8
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %43

61:                                               ; preds = %43
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load %struct.mbox_controller*, %struct.mbox_controller** %5, align 8
  %64 = call i32 @devm_mbox_controller_register(%struct.device* %62, %struct.mbox_controller* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @dev_crit(%struct.device* %68, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %73

72:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %67, %33
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_4__* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @devm_mbox_controller_register(%struct.device*, %struct.mbox_controller*) #1

declare dso_local i32 @dev_crit(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
