; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_estimate_nonheader_desc_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_estimate_nonheader_desc_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcm_message = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcm_message*)* @flexrm_estimate_nonheader_desc_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexrm_estimate_nonheader_desc_count(%struct.brcm_message* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcm_message*, align 8
  store %struct.brcm_message* %0, %struct.brcm_message** %3, align 8
  %4 = load %struct.brcm_message*, %struct.brcm_message** %3, align 8
  %5 = icmp ne %struct.brcm_message* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

7:                                                ; preds = %1
  %8 = load %struct.brcm_message*, %struct.brcm_message** %3, align 8
  %9 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %17 [
    i32 128, label %11
    i32 129, label %14
  ]

11:                                               ; preds = %7
  %12 = load %struct.brcm_message*, %struct.brcm_message** %3, align 8
  %13 = call i32 @flexrm_spu_estimate_nonheader_desc_count(%struct.brcm_message* %12)
  store i32 %13, i32* %2, align 4
  br label %18

14:                                               ; preds = %7
  %15 = load %struct.brcm_message*, %struct.brcm_message** %3, align 8
  %16 = call i32 @flexrm_sba_estimate_nonheader_desc_count(%struct.brcm_message* %15)
  store i32 %16, i32* %2, align 4
  br label %18

17:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %14, %11, %6
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @flexrm_spu_estimate_nonheader_desc_count(%struct.brcm_message*) #1

declare dso_local i32 @flexrm_sba_estimate_nonheader_desc_count(%struct.brcm_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
