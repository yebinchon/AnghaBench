; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_ctl.c_set_display_intf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_ctl.c_set_display_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_kms = type { i32 }
%struct.mdp5_interface = type { i32, i32 }

@REG_MDP5_DISP_INTF_SEL = common dso_local global i32 0, align 4
@MDP5_DISP_INTF_SEL_INTF0__MASK = common dso_local global i32 0, align 4
@MDP5_DISP_INTF_SEL_INTF1__MASK = common dso_local global i32 0, align 4
@MDP5_DISP_INTF_SEL_INTF2__MASK = common dso_local global i32 0, align 4
@MDP5_DISP_INTF_SEL_INTF3__MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdp5_kms*, %struct.mdp5_interface*)* @set_display_intf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_display_intf(%struct.mdp5_kms* %0, %struct.mdp5_interface* %1) #0 {
  %3 = alloca %struct.mdp5_kms*, align 8
  %4 = alloca %struct.mdp5_interface*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mdp5_kms* %0, %struct.mdp5_kms** %3, align 8
  store %struct.mdp5_interface* %1, %struct.mdp5_interface** %4, align 8
  %7 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %8 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %12 = load i32, i32* @REG_MDP5_DISP_INTF_SEL, align 4
  %13 = call i32 @mdp5_read(%struct.mdp5_kms* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.mdp5_interface*, %struct.mdp5_interface** %4, align 8
  %15 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %61 [
    i32 0, label %17
    i32 1, label %28
    i32 2, label %39
    i32 3, label %50
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* @MDP5_DISP_INTF_SEL_INTF0__MASK, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load %struct.mdp5_interface*, %struct.mdp5_interface** %4, align 8
  %23 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @MDP5_DISP_INTF_SEL_INTF0(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %63

28:                                               ; preds = %2
  %29 = load i32, i32* @MDP5_DISP_INTF_SEL_INTF1__MASK, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load %struct.mdp5_interface*, %struct.mdp5_interface** %4, align 8
  %34 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @MDP5_DISP_INTF_SEL_INTF1(i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %63

39:                                               ; preds = %2
  %40 = load i32, i32* @MDP5_DISP_INTF_SEL_INTF2__MASK, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load %struct.mdp5_interface*, %struct.mdp5_interface** %4, align 8
  %45 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @MDP5_DISP_INTF_SEL_INTF2(i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %63

50:                                               ; preds = %2
  %51 = load i32, i32* @MDP5_DISP_INTF_SEL_INTF3__MASK, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load %struct.mdp5_interface*, %struct.mdp5_interface** %4, align 8
  %56 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @MDP5_DISP_INTF_SEL_INTF3(i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %63

61:                                               ; preds = %2
  %62 = call i32 (...) @BUG()
  br label %63

63:                                               ; preds = %61, %50, %39, %28, %17
  %64 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %65 = load i32, i32* @REG_MDP5_DISP_INTF_SEL, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @mdp5_write(%struct.mdp5_kms* %64, i32 %65, i32 %66)
  %68 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %69 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %68, i32 0, i32 0
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mdp5_read(%struct.mdp5_kms*, i32) #1

declare dso_local i32 @MDP5_DISP_INTF_SEL_INTF0(i32) #1

declare dso_local i32 @MDP5_DISP_INTF_SEL_INTF1(i32) #1

declare dso_local i32 @MDP5_DISP_INTF_SEL_INTF2(i32) #1

declare dso_local i32 @MDP5_DISP_INTF_SEL_INTF3(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @mdp5_write(%struct.mdp5_kms*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
