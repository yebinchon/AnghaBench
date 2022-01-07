; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_count_fw_records.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_count_fw_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i64 }
%struct.ihex_binrec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.firmware*)* @ims_pcu_count_fw_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ims_pcu_count_fw_records(%struct.firmware* %0) #0 {
  %2 = alloca %struct.firmware*, align 8
  %3 = alloca %struct.ihex_binrec*, align 8
  %4 = alloca i32, align 4
  store %struct.firmware* %0, %struct.firmware** %2, align 8
  %5 = load %struct.firmware*, %struct.firmware** %2, align 8
  %6 = getelementptr inbounds %struct.firmware, %struct.firmware* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.ihex_binrec*
  store %struct.ihex_binrec* %8, %struct.ihex_binrec** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %12, %1
  %10 = load %struct.ihex_binrec*, %struct.ihex_binrec** %3, align 8
  %11 = icmp ne %struct.ihex_binrec* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = add i32 %13, 1
  store i32 %14, i32* %4, align 4
  %15 = load %struct.ihex_binrec*, %struct.ihex_binrec** %3, align 8
  %16 = call %struct.ihex_binrec* @ihex_next_binrec(%struct.ihex_binrec* %15)
  store %struct.ihex_binrec* %16, %struct.ihex_binrec** %3, align 8
  br label %9

17:                                               ; preds = %9
  %18 = load i32, i32* %4, align 4
  ret i32 %18
}

declare dso_local %struct.ihex_binrec* @ihex_next_binrec(%struct.ihex_binrec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
