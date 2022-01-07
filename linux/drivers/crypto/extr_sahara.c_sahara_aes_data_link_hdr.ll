; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_aes_data_link_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_aes_data_link_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sahara_dev = type { i32 }

@SAHARA_HDR_BASE = common dso_local global i32 0, align 4
@SAHARA_HDR_FORM_DATA = common dso_local global i32 0, align 4
@SAHARA_HDR_CHA_SKHA = common dso_local global i32 0, align 4
@SAHARA_HDR_PARITY_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sahara_dev*)* @sahara_aes_data_link_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sahara_aes_data_link_hdr(%struct.sahara_dev* %0) #0 {
  %2 = alloca %struct.sahara_dev*, align 8
  store %struct.sahara_dev* %0, %struct.sahara_dev** %2, align 8
  %3 = load i32, i32* @SAHARA_HDR_BASE, align 4
  %4 = load i32, i32* @SAHARA_HDR_FORM_DATA, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @SAHARA_HDR_CHA_SKHA, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @SAHARA_HDR_PARITY_BIT, align 4
  %9 = or i32 %7, %8
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
