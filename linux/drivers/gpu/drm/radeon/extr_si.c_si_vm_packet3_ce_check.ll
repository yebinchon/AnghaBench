; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_vm_packet3_ce_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_vm_packet3_ce_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_cs_packet = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Invalid CE packet3: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32*, %struct.radeon_cs_packet*)* @si_vm_packet3_ce_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_vm_packet3_ce_check(%struct.radeon_device* %0, i32* %1, %struct.radeon_cs_packet* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.radeon_cs_packet*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.radeon_cs_packet* %2, %struct.radeon_cs_packet** %7, align 8
  %8 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %9 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %12 [
    i32 133, label %11
    i32 132, label %11
    i32 131, label %11
    i32 134, label %11
    i32 129, label %11
    i32 128, label %11
    i32 136, label %11
    i32 135, label %11
    i32 130, label %11
    i32 137, label %11
  ]

11:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  br label %19

12:                                               ; preds = %3
  %13 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %14 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %20

19:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %19, %12
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
