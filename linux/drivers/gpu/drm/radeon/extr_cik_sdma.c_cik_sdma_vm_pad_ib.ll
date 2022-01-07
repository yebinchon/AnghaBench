; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik_sdma.c_cik_sdma_vm_pad_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik_sdma.c_cik_sdma_vm_pad_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_ib = type { i32, i32* }

@SDMA_OPCODE_NOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cik_sdma_vm_pad_ib(%struct.radeon_ib* %0) #0 {
  %2 = alloca %struct.radeon_ib*, align 8
  store %struct.radeon_ib* %0, %struct.radeon_ib** %2, align 8
  br label %3

3:                                                ; preds = %9, %1
  %4 = load %struct.radeon_ib*, %struct.radeon_ib** %2, align 8
  %5 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, 7
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %3
  %10 = load i32, i32* @SDMA_OPCODE_NOP, align 4
  %11 = call i32 @SDMA_PACKET(i32 %10, i32 0, i32 0)
  %12 = load %struct.radeon_ib*, %struct.radeon_ib** %2, align 8
  %13 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.radeon_ib*, %struct.radeon_ib** %2, align 8
  %16 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i32, i32* %14, i64 %19
  store i32 %11, i32* %20, align 4
  br label %3

21:                                               ; preds = %3
  ret void
}

declare dso_local i32 @SDMA_PACKET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
