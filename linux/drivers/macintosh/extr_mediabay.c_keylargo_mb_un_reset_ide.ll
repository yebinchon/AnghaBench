; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_mediabay.c_keylargo_mb_un_reset_ide.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_mediabay.c_keylargo_mb_un_reset_ide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_bay_info = type { i32 }

@KEYLARGO_FCR1 = common dso_local global i32 0, align 4
@KL1_EIDE0_RESET_N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.media_bay_info*)* @keylargo_mb_un_reset_ide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keylargo_mb_un_reset_ide(%struct.media_bay_info* %0) #0 {
  %2 = alloca %struct.media_bay_info*, align 8
  store %struct.media_bay_info* %0, %struct.media_bay_info** %2, align 8
  %3 = load %struct.media_bay_info*, %struct.media_bay_info** %2, align 8
  %4 = load i32, i32* @KEYLARGO_FCR1, align 4
  %5 = load i32, i32* @KL1_EIDE0_RESET_N, align 4
  %6 = call i32 @MB_BIS(%struct.media_bay_info* %3, i32 %4, i32 %5)
  ret void
}

declare dso_local i32 @MB_BIS(%struct.media_bay_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
