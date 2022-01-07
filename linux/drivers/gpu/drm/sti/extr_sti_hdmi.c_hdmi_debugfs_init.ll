; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_hdmi_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_hdmi_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.sti_hdmi* }
%struct.sti_hdmi = type { i32 }
%struct.drm_minor = type { i32 }

@hdmi_debugfs_files = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sti_hdmi*, %struct.drm_minor*)* @hdmi_debugfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_debugfs_init(%struct.sti_hdmi* %0, %struct.drm_minor* %1) #0 {
  %3 = alloca %struct.sti_hdmi*, align 8
  %4 = alloca %struct.drm_minor*, align 8
  %5 = alloca i32, align 4
  store %struct.sti_hdmi* %0, %struct.sti_hdmi** %3, align 8
  store %struct.drm_minor* %1, %struct.drm_minor** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %18, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hdmi_debugfs_files, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %8)
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %6
  %12 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hdmi_debugfs_files, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.sti_hdmi* %12, %struct.sti_hdmi** %17, align 8
  br label %18

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %6

21:                                               ; preds = %6
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hdmi_debugfs_files, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hdmi_debugfs_files, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %23)
  %25 = load %struct.drm_minor*, %struct.drm_minor** %4, align 8
  %26 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drm_minor*, %struct.drm_minor** %4, align 8
  %29 = call i32 @drm_debugfs_create_files(%struct.TYPE_4__* %22, i32 %24, i32 %27, %struct.drm_minor* %28)
  ret i32 %29
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @drm_debugfs_create_files(%struct.TYPE_4__*, i32, i32, %struct.drm_minor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
