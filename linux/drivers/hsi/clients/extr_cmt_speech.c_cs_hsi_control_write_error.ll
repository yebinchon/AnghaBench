; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_control_write_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_control_write_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_hsi_iface = type { i32 }
%struct.hsi_msg = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"control write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs_hsi_iface*, %struct.hsi_msg*)* @cs_hsi_control_write_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_hsi_control_write_error(%struct.cs_hsi_iface* %0, %struct.hsi_msg* %1) #0 {
  %3 = alloca %struct.cs_hsi_iface*, align 8
  %4 = alloca %struct.hsi_msg*, align 8
  store %struct.cs_hsi_iface* %0, %struct.cs_hsi_iface** %3, align 8
  store %struct.hsi_msg* %1, %struct.hsi_msg** %4, align 8
  %5 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %6 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %7 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %8 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %7, i32 0, i32 0
  %9 = call i32 @__cs_hsi_error_pre(%struct.cs_hsi_iface* %5, %struct.hsi_msg* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %8)
  %10 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  %11 = call i32 @cs_release_cmd(%struct.hsi_msg* %10)
  %12 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %13 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %12, i32 0, i32 0
  %14 = call i32 @__cs_hsi_error_write_bits(i32* %13)
  %15 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %16 = call i32 @__cs_hsi_error_post(%struct.cs_hsi_iface* %15)
  ret void
}

declare dso_local i32 @__cs_hsi_error_pre(%struct.cs_hsi_iface*, %struct.hsi_msg*, i8*, i32*) #1

declare dso_local i32 @cs_release_cmd(%struct.hsi_msg*) #1

declare dso_local i32 @__cs_hsi_error_write_bits(i32*) #1

declare dso_local i32 @__cs_hsi_error_post(%struct.cs_hsi_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
