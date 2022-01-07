; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_sg_sw_sec4.h_sg_to_sec4_set_last.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_sg_sw_sec4.h_sg_to_sec4_set_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec4_sg_entry = type { i32 }
%struct.dpaa2_sg_entry = type { i32 }

@caam_dpaa2 = common dso_local global i64 0, align 8
@SEC4_SG_LEN_FIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sec4_sg_entry*)* @sg_to_sec4_set_last to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sg_to_sec4_set_last(%struct.sec4_sg_entry* %0) #0 {
  %2 = alloca %struct.sec4_sg_entry*, align 8
  store %struct.sec4_sg_entry* %0, %struct.sec4_sg_entry** %2, align 8
  %3 = load i64, i64* @caam_dpaa2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.sec4_sg_entry*, %struct.sec4_sg_entry** %2, align 8
  %7 = bitcast %struct.sec4_sg_entry* %6 to %struct.dpaa2_sg_entry*
  %8 = call i32 @dpaa2_sg_set_final(%struct.dpaa2_sg_entry* %7, i32 1)
  br label %16

9:                                                ; preds = %1
  %10 = load i32, i32* @SEC4_SG_LEN_FIN, align 4
  %11 = call i32 @cpu_to_caam32(i32 %10)
  %12 = load %struct.sec4_sg_entry*, %struct.sec4_sg_entry** %2, align 8
  %13 = getelementptr inbounds %struct.sec4_sg_entry, %struct.sec4_sg_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  br label %16

16:                                               ; preds = %9, %5
  ret void
}

declare dso_local i32 @dpaa2_sg_set_final(%struct.dpaa2_sg_entry*, i32) #1

declare dso_local i32 @cpu_to_caam32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
