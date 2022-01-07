; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_mixer.c_sti_mixer_set_background_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_mixer.c_sti_mixer_set_background_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_mixer = type { i32 }

@GAM_MIXER_CTL = common dso_local global i32 0, align 4
@GAM_CTL_BACK_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sti_mixer_set_background_status(%struct.sti_mixer* %0, i32 %1) #0 {
  %3 = alloca %struct.sti_mixer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sti_mixer* %0, %struct.sti_mixer** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sti_mixer*, %struct.sti_mixer** %3, align 8
  %7 = load i32, i32* @GAM_MIXER_CTL, align 4
  %8 = call i32 @sti_mixer_reg_read(%struct.sti_mixer* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @GAM_CTL_BACK_MASK, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load %struct.sti_mixer*, %struct.sti_mixer** %3, align 8
  %17 = load i32, i32* @GAM_MIXER_CTL, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @sti_mixer_reg_write(%struct.sti_mixer* %16, i32 %17, i32 %18)
  ret void
}

declare dso_local i32 @sti_mixer_reg_read(%struct.sti_mixer*, i32) #1

declare dso_local i32 @sti_mixer_reg_write(%struct.sti_mixer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
