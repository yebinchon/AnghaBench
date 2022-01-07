; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor.c_mv_desc_set_next_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor.c_mv_desc_set_next_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_xor_desc_slot = type { %struct.mv_xor_desc* }
%struct.mv_xor_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_xor_desc_slot*, i32)* @mv_desc_set_next_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_desc_set_next_desc(%struct.mv_xor_desc_slot* %0, i32 %1) #0 {
  %3 = alloca %struct.mv_xor_desc_slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv_xor_desc*, align 8
  store %struct.mv_xor_desc_slot* %0, %struct.mv_xor_desc_slot** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mv_xor_desc_slot*, %struct.mv_xor_desc_slot** %3, align 8
  %7 = getelementptr inbounds %struct.mv_xor_desc_slot, %struct.mv_xor_desc_slot* %6, i32 0, i32 0
  %8 = load %struct.mv_xor_desc*, %struct.mv_xor_desc** %7, align 8
  store %struct.mv_xor_desc* %8, %struct.mv_xor_desc** %5, align 8
  %9 = load %struct.mv_xor_desc*, %struct.mv_xor_desc** %5, align 8
  %10 = getelementptr inbounds %struct.mv_xor_desc, %struct.mv_xor_desc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.mv_xor_desc*, %struct.mv_xor_desc** %5, align 8
  %15 = getelementptr inbounds %struct.mv_xor_desc, %struct.mv_xor_desc* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
