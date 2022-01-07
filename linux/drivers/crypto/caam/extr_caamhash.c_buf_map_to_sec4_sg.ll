; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamhash.c_buf_map_to_sec4_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamhash.c_buf_map_to_sec4_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sec4_sg_entry = type { i32 }
%struct.caam_hash_state = type { i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"unable to map buf\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.sec4_sg_entry*, %struct.caam_hash_state*)* @buf_map_to_sec4_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buf_map_to_sec4_sg(%struct.device* %0, %struct.sec4_sg_entry* %1, %struct.caam_hash_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.sec4_sg_entry*, align 8
  %7 = alloca %struct.caam_hash_state*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.sec4_sg_entry* %1, %struct.sec4_sg_entry** %6, align 8
  store %struct.caam_hash_state* %2, %struct.caam_hash_state** %7, align 8
  %9 = load %struct.caam_hash_state*, %struct.caam_hash_state** %7, align 8
  %10 = call i32* @current_buflen(%struct.caam_hash_state* %9)
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

15:                                               ; preds = %3
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = load %struct.caam_hash_state*, %struct.caam_hash_state** %7, align 8
  %18 = call i32 @current_buf(%struct.caam_hash_state* %17)
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @DMA_TO_DEVICE, align 4
  %21 = call i64 @dma_map_single(%struct.device* %16, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.caam_hash_state*, %struct.caam_hash_state** %7, align 8
  %23 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load %struct.caam_hash_state*, %struct.caam_hash_state** %7, align 8
  %26 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @dma_mapping_error(%struct.device* %24, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %15
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.caam_hash_state*, %struct.caam_hash_state** %7, align 8
  %34 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %44

37:                                               ; preds = %15
  %38 = load %struct.sec4_sg_entry*, %struct.sec4_sg_entry** %6, align 8
  %39 = load %struct.caam_hash_state*, %struct.caam_hash_state** %7, align 8
  %40 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @dma_to_sec4_sg_one(%struct.sec4_sg_entry* %38, i64 %41, i32 %42, i32 0)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %37, %30, %14
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32* @current_buflen(%struct.caam_hash_state*) #1

declare dso_local i64 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @current_buf(%struct.caam_hash_state*) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dma_to_sec4_sg_one(%struct.sec4_sg_entry*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
