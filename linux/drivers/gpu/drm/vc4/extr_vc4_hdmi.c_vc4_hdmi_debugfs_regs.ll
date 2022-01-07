; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hdmi.c_vc4_hdmi_debugfs_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hdmi.c_vc4_hdmi_debugfs_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.drm_info_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.vc4_dev = type { %struct.vc4_hdmi* }
%struct.vc4_hdmi = type { i32, i32 }
%struct.drm_printer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @vc4_hdmi_debugfs_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_hdmi_debugfs_regs(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_info_node*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.vc4_dev*, align 8
  %8 = alloca %struct.vc4_hdmi*, align 8
  %9 = alloca %struct.drm_printer, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.drm_info_node*
  store %struct.drm_info_node* %13, %struct.drm_info_node** %5, align 8
  %14 = load %struct.drm_info_node*, %struct.drm_info_node** %5, align 8
  %15 = getelementptr inbounds %struct.drm_info_node, %struct.drm_info_node* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %6, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %20 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %19)
  store %struct.vc4_dev* %20, %struct.vc4_dev** %7, align 8
  %21 = load %struct.vc4_dev*, %struct.vc4_dev** %7, align 8
  %22 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %21, i32 0, i32 0
  %23 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %22, align 8
  store %struct.vc4_hdmi* %23, %struct.vc4_hdmi** %8, align 8
  %24 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %25 = call i32 @drm_seq_file_printer(%struct.seq_file* %24)
  %26 = getelementptr inbounds %struct.drm_printer, %struct.drm_printer* %9, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %8, align 8
  %28 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %27, i32 0, i32 1
  %29 = call i32 @drm_print_regset32(%struct.drm_printer* %9, i32* %28)
  %30 = load %struct.vc4_hdmi*, %struct.vc4_hdmi** %8, align 8
  %31 = getelementptr inbounds %struct.vc4_hdmi, %struct.vc4_hdmi* %30, i32 0, i32 0
  %32 = call i32 @drm_print_regset32(%struct.drm_printer* %9, i32* %31)
  ret i32 0
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @drm_seq_file_printer(%struct.seq_file*) #1

declare dso_local i32 @drm_print_regset32(%struct.drm_printer*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
