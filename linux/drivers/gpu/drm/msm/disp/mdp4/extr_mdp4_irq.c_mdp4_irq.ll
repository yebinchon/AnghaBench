; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_irq.c_mdp4_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_irq.c_mdp4_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_kms = type { i32 }
%struct.mdp_kms = type { i32 }
%struct.mdp4_kms = type { %struct.drm_device* }
%struct.drm_device = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32, i32* }

@REG_MDP4_INTR_ENABLE = common dso_local global i32 0, align 4
@REG_MDP4_INTR_STATUS = common dso_local global i32 0, align 4
@REG_MDP4_INTR_CLEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"status=%08x\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdp4_irq(%struct.msm_kms* %0) #0 {
  %2 = alloca %struct.msm_kms*, align 8
  %3 = alloca %struct.mdp_kms*, align 8
  %4 = alloca %struct.mdp4_kms*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.msm_drm_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.msm_kms* %0, %struct.msm_kms** %2, align 8
  %10 = load %struct.msm_kms*, %struct.msm_kms** %2, align 8
  %11 = call %struct.mdp_kms* @to_mdp_kms(%struct.msm_kms* %10)
  store %struct.mdp_kms* %11, %struct.mdp_kms** %3, align 8
  %12 = load %struct.mdp_kms*, %struct.mdp_kms** %3, align 8
  %13 = call %struct.mdp4_kms* @to_mdp4_kms(%struct.mdp_kms* %12)
  store %struct.mdp4_kms* %13, %struct.mdp4_kms** %4, align 8
  %14 = load %struct.mdp4_kms*, %struct.mdp4_kms** %4, align 8
  %15 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %5, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.msm_drm_private*, %struct.msm_drm_private** %18, align 8
  store %struct.msm_drm_private* %19, %struct.msm_drm_private** %6, align 8
  %20 = load %struct.mdp4_kms*, %struct.mdp4_kms** %4, align 8
  %21 = load i32, i32* @REG_MDP4_INTR_ENABLE, align 4
  %22 = call i32 @mdp4_read(%struct.mdp4_kms* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.mdp4_kms*, %struct.mdp4_kms** %4, align 8
  %24 = load i32, i32* @REG_MDP4_INTR_STATUS, align 4
  %25 = call i32 @mdp4_read(%struct.mdp4_kms* %23, i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %8, align 4
  %28 = load %struct.mdp4_kms*, %struct.mdp4_kms** %4, align 8
  %29 = load i32, i32* @REG_MDP4_INTR_CLEAR, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @mdp4_write(%struct.mdp4_kms* %28, i32 %29, i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @VERB(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.mdp_kms*, %struct.mdp_kms** %3, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @mdp_dispatch_irqs(%struct.mdp_kms* %34, i32 %35)
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %60, %1
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  %40 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  %46 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mdp4_crtc_vblank(i32 %51)
  %53 = and i32 %44, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %43
  %56 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @drm_handle_vblank(%struct.drm_device* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %43
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %37

63:                                               ; preds = %37
  %64 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %64
}

declare dso_local %struct.mdp_kms* @to_mdp_kms(%struct.msm_kms*) #1

declare dso_local %struct.mdp4_kms* @to_mdp4_kms(%struct.mdp_kms*) #1

declare dso_local i32 @mdp4_read(%struct.mdp4_kms*, i32) #1

declare dso_local i32 @mdp4_write(%struct.mdp4_kms*, i32, i32) #1

declare dso_local i32 @VERB(i8*, i32) #1

declare dso_local i32 @mdp_dispatch_irqs(%struct.mdp_kms*, i32) #1

declare dso_local i32 @mdp4_crtc_vblank(i32) #1

declare dso_local i32 @drm_handle_vblank(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
