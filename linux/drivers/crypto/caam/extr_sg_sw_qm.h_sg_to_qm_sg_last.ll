; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_sg_sw_qm.h_sg_to_qm_sg_last.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_sg_sw_qm.h_sg_to_qm_sg_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.qm_sg_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scatterlist*, i32, %struct.qm_sg_entry*, i32)* @sg_to_qm_sg_last to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sg_to_qm_sg_last(%struct.scatterlist* %0, i32 %1, %struct.qm_sg_entry* %2, i32 %3) #0 {
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qm_sg_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.qm_sg_entry* %2, %struct.qm_sg_entry** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.qm_sg_entry*, %struct.qm_sg_entry** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call %struct.qm_sg_entry* @sg_to_qm_sg(%struct.scatterlist* %9, i32 %10, %struct.qm_sg_entry* %11, i32 %12)
  store %struct.qm_sg_entry* %13, %struct.qm_sg_entry** %7, align 8
  %14 = load %struct.qm_sg_entry*, %struct.qm_sg_entry** %7, align 8
  %15 = load %struct.qm_sg_entry*, %struct.qm_sg_entry** %7, align 8
  %16 = call i32 @qm_sg_entry_get_len(%struct.qm_sg_entry* %15)
  %17 = call i32 @qm_sg_entry_set_f(%struct.qm_sg_entry* %14, i32 %16)
  ret void
}

declare dso_local %struct.qm_sg_entry* @sg_to_qm_sg(%struct.scatterlist*, i32, %struct.qm_sg_entry*, i32) #1

declare dso_local i32 @qm_sg_entry_set_f(%struct.qm_sg_entry*, i32) #1

declare dso_local i32 @qm_sg_entry_get_len(%struct.qm_sg_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
