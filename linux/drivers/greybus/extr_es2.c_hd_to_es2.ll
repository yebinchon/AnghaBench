; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_hd_to_es2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_hd_to_es2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es2_ap_dev = type { i32 }
%struct.gb_host_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.es2_ap_dev* (%struct.gb_host_device*)* @hd_to_es2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.es2_ap_dev* @hd_to_es2(%struct.gb_host_device* %0) #0 {
  %2 = alloca %struct.gb_host_device*, align 8
  store %struct.gb_host_device* %0, %struct.gb_host_device** %2, align 8
  %3 = load %struct.gb_host_device*, %struct.gb_host_device** %2, align 8
  %4 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %3, i32 0, i32 0
  %5 = bitcast i32* %4 to %struct.es2_ap_dev*
  ret %struct.es2_ap_dev* %5
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
