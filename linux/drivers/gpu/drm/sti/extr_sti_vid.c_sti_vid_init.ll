; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_vid.c_sti_vid_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_vid.c_sti_vid_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_vid = type { i64 }

@VID_CTL_PSI_ENABLE = common dso_local global i32 0, align 4
@VID_CTL_IGNORE = common dso_local global i32 0, align 4
@VID_CTL = common dso_local global i64 0, align 8
@VID_ALP_OPAQUE = common dso_local global i32 0, align 4
@VID_ALP = common dso_local global i64 0, align 8
@VID_BC_DFLT = common dso_local global i32 0, align 4
@VID_BC = common dso_local global i64 0, align 8
@VID_TINT_DFLT = common dso_local global i32 0, align 4
@VID_TINT = common dso_local global i64 0, align 8
@VID_CSAT_DFLT = common dso_local global i32 0, align 4
@VID_CSAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sti_vid*)* @sti_vid_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sti_vid_init(%struct.sti_vid* %0) #0 {
  %2 = alloca %struct.sti_vid*, align 8
  store %struct.sti_vid* %0, %struct.sti_vid** %2, align 8
  %3 = load i32, i32* @VID_CTL_PSI_ENABLE, align 4
  %4 = load i32, i32* @VID_CTL_IGNORE, align 4
  %5 = or i32 %3, %4
  %6 = load %struct.sti_vid*, %struct.sti_vid** %2, align 8
  %7 = getelementptr inbounds %struct.sti_vid, %struct.sti_vid* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @VID_CTL, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 %5, i64 %10)
  %12 = load i32, i32* @VID_ALP_OPAQUE, align 4
  %13 = load %struct.sti_vid*, %struct.sti_vid** %2, align 8
  %14 = getelementptr inbounds %struct.sti_vid, %struct.sti_vid* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VID_ALP, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %12, i64 %17)
  %19 = load i32, i32* @VID_BC_DFLT, align 4
  %20 = load %struct.sti_vid*, %struct.sti_vid** %2, align 8
  %21 = getelementptr inbounds %struct.sti_vid, %struct.sti_vid* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VID_BC, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  %26 = load i32, i32* @VID_TINT_DFLT, align 4
  %27 = load %struct.sti_vid*, %struct.sti_vid** %2, align 8
  %28 = getelementptr inbounds %struct.sti_vid, %struct.sti_vid* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @VID_TINT, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load i32, i32* @VID_CSAT_DFLT, align 4
  %34 = load %struct.sti_vid*, %struct.sti_vid** %2, align 8
  %35 = getelementptr inbounds %struct.sti_vid, %struct.sti_vid* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @VID_CSAT, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
