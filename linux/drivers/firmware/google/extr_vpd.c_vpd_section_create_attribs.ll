; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/google/extr_vpd.c_vpd_section_create_attribs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/google/extr_vpd.c_vpd_section_create_attribs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpd_section = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@vpd_section_attrib_add = common dso_local global i32 0, align 4
@VPD_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpd_section*)* @vpd_section_create_attribs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpd_section_create_attribs(%struct.vpd_section* %0) #0 {
  %2 = alloca %struct.vpd_section*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.vpd_section* %0, %struct.vpd_section** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %16, %1
  %6 = load %struct.vpd_section*, %struct.vpd_section** %2, align 8
  %7 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.vpd_section*, %struct.vpd_section** %2, align 8
  %11 = getelementptr inbounds %struct.vpd_section, %struct.vpd_section* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @vpd_section_attrib_add, align 4
  %14 = load %struct.vpd_section*, %struct.vpd_section** %2, align 8
  %15 = call i32 @vpd_decode_string(i32 %9, i32 %12, i64* %3, i32 %13, %struct.vpd_section* %14)
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @VPD_OK, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %5, label %20

20:                                               ; preds = %16
  ret i32 0
}

declare dso_local i32 @vpd_decode_string(i32, i32, i64*, i32, %struct.vpd_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
