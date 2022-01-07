; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_intel_hdmi_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_intel_hdmi_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.intel_connector = type { %struct.TYPE_2__, %struct.intel_encoder* }
%struct.TYPE_2__ = type { i64 }
%struct.intel_encoder = type { i32 }
%struct.intel_hdmi = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"\09audio support: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\09HDCP version: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.intel_connector*)* @intel_hdmi_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_hdmi_info(%struct.seq_file* %0, %struct.intel_connector* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.intel_connector*, align 8
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca %struct.intel_hdmi*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.intel_connector* %1, %struct.intel_connector** %4, align 8
  %7 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %8 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %7, i32 0, i32 1
  %9 = load %struct.intel_encoder*, %struct.intel_encoder** %8, align 8
  store %struct.intel_encoder* %9, %struct.intel_encoder** %5, align 8
  %10 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %11 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %10, i32 0, i32 0
  %12 = call %struct.intel_hdmi* @enc_to_intel_hdmi(i32* %11)
  store %struct.intel_hdmi* %12, %struct.intel_hdmi** %6, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %15 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @yesno(i32 %16)
  %18 = call i32 @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %20 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = call i32 @seq_puts(%struct.seq_file* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %29 = call i32 @intel_hdcp_info(%struct.seq_file* %27, %struct.intel_connector* %28)
  br label %30

30:                                               ; preds = %24, %2
  ret void
}

declare dso_local %struct.intel_hdmi* @enc_to_intel_hdmi(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @yesno(i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @intel_hdcp_info(%struct.seq_file*, %struct.intel_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
