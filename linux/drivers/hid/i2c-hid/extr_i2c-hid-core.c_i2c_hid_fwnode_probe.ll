; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/i2c-hid/extr_i2c-hid-core.c_i2c_hid_fwnode_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/i2c-hid/extr_i2c-hid-core.c_i2c_hid_fwnode_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_hid_platform_data = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"post-power-on-delay-ms\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, %struct.i2c_hid_platform_data*)* @i2c_hid_fwnode_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_hid_fwnode_probe(%struct.i2c_client* %0, %struct.i2c_hid_platform_data* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.i2c_hid_platform_data*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store %struct.i2c_hid_platform_data* %1, %struct.i2c_hid_platform_data** %4, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  %8 = call i32 @device_property_read_u32(i32* %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %5)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.i2c_hid_platform_data*, %struct.i2c_hid_platform_data** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_hid_platform_data, %struct.i2c_hid_platform_data* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  br label %14

14:                                               ; preds = %10, %2
  ret void
}

declare dso_local i32 @device_property_read_u32(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
