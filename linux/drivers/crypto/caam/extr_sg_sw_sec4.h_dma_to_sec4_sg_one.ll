; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_sg_sw_sec4.h_dma_to_sec4_sg_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_sg_sw_sec4.h_dma_to_sec4_sg_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec4_sg_entry = type { i8*, i8*, i32 }
%struct.dpaa2_sg_entry = type { i32 }

@caam_dpaa2 = common dso_local global i64 0, align 8
@SEC4_SG_OFFSET_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"sec4_sg_ptr@: \00", align 1
@DUMP_PREFIX_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sec4_sg_entry*, i32, i32, i32)* @dma_to_sec4_sg_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_to_sec4_sg_one(%struct.sec4_sg_entry* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sec4_sg_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sec4_sg_entry* %0, %struct.sec4_sg_entry** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i64, i64* @caam_dpaa2, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %4
  %12 = load %struct.sec4_sg_entry*, %struct.sec4_sg_entry** %5, align 8
  %13 = bitcast %struct.sec4_sg_entry* %12 to %struct.dpaa2_sg_entry*
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @dma_to_qm_sg_one(%struct.dpaa2_sg_entry* %13, i32 %14, i32 %15, i32 %16)
  br label %33

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @cpu_to_caam_dma64(i32 %19)
  %21 = load %struct.sec4_sg_entry*, %struct.sec4_sg_entry** %5, align 8
  %22 = getelementptr inbounds %struct.sec4_sg_entry, %struct.sec4_sg_entry* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i8* @cpu_to_caam32(i32 %23)
  %25 = load %struct.sec4_sg_entry*, %struct.sec4_sg_entry** %5, align 8
  %26 = getelementptr inbounds %struct.sec4_sg_entry, %struct.sec4_sg_entry* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @SEC4_SG_OFFSET_MASK, align 4
  %29 = and i32 %27, %28
  %30 = call i8* @cpu_to_caam32(i32 %29)
  %31 = load %struct.sec4_sg_entry*, %struct.sec4_sg_entry** %5, align 8
  %32 = getelementptr inbounds %struct.sec4_sg_entry, %struct.sec4_sg_entry* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  br label %33

33:                                               ; preds = %18, %11
  %34 = load i32, i32* @DUMP_PREFIX_ADDRESS, align 4
  %35 = load %struct.sec4_sg_entry*, %struct.sec4_sg_entry** %5, align 8
  %36 = call i32 @print_hex_dump_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %34, i32 16, i32 4, %struct.sec4_sg_entry* %35, i32 24, i32 1)
  ret void
}

declare dso_local i32 @dma_to_qm_sg_one(%struct.dpaa2_sg_entry*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_caam_dma64(i32) #1

declare dso_local i8* @cpu_to_caam32(i32) #1

declare dso_local i32 @print_hex_dump_debug(i8*, i32, i32, i32, %struct.sec4_sg_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
