; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_intel_dp_mst_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_intel_dp_mst_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.intel_connector = type { i32, %struct.intel_encoder* }
%struct.intel_encoder = type { i32 }
%struct.intel_dp_mst_encoder = type { %struct.intel_digital_port* }
%struct.intel_digital_port = type { %struct.intel_dp }
%struct.intel_dp = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"\09audio support: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.intel_connector*)* @intel_dp_mst_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_mst_info(%struct.seq_file* %0, %struct.intel_connector* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.intel_connector*, align 8
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca %struct.intel_dp_mst_encoder*, align 8
  %7 = alloca %struct.intel_digital_port*, align 8
  %8 = alloca %struct.intel_dp*, align 8
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.intel_connector* %1, %struct.intel_connector** %4, align 8
  %10 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %11 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %10, i32 0, i32 1
  %12 = load %struct.intel_encoder*, %struct.intel_encoder** %11, align 8
  store %struct.intel_encoder* %12, %struct.intel_encoder** %5, align 8
  %13 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %14 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %13, i32 0, i32 0
  %15 = call %struct.intel_dp_mst_encoder* @enc_to_mst(i32* %14)
  store %struct.intel_dp_mst_encoder* %15, %struct.intel_dp_mst_encoder** %6, align 8
  %16 = load %struct.intel_dp_mst_encoder*, %struct.intel_dp_mst_encoder** %6, align 8
  %17 = getelementptr inbounds %struct.intel_dp_mst_encoder, %struct.intel_dp_mst_encoder* %16, i32 0, i32 0
  %18 = load %struct.intel_digital_port*, %struct.intel_digital_port** %17, align 8
  store %struct.intel_digital_port* %18, %struct.intel_digital_port** %7, align 8
  %19 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %20 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %19, i32 0, i32 0
  store %struct.intel_dp* %20, %struct.intel_dp** %8, align 8
  %21 = load %struct.intel_dp*, %struct.intel_dp** %8, align 8
  %22 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %21, i32 0, i32 0
  %23 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %24 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @drm_dp_mst_port_has_audio(i32* %22, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @yesno(i32 %28)
  %30 = call i32 @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %29)
  ret void
}

declare dso_local %struct.intel_dp_mst_encoder* @enc_to_mst(i32*) #1

declare dso_local i32 @drm_dp_mst_port_has_audio(i32*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @yesno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
