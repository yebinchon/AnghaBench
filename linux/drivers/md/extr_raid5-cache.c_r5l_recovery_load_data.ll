; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_recovery_load_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_recovery_load_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_log = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mddev* }
%struct.mddev = type { %struct.r5conf* }
%struct.r5conf = type { i32 }
%struct.stripe_head = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.r5l_recovery_ctx = type { i32 }
%struct.r5l_payload_data_parity = type { i32*, i32 }

@BLOCK_SECTORS = common dso_local global i64 0, align 8
@R5_Wantwrite = common dso_local global i32 0, align 4
@STRIPE_R5C_CACHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5l_log*, %struct.stripe_head*, %struct.r5l_recovery_ctx*, %struct.r5l_payload_data_parity*, i32)* @r5l_recovery_load_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r5l_recovery_load_data(%struct.r5l_log* %0, %struct.stripe_head* %1, %struct.r5l_recovery_ctx* %2, %struct.r5l_payload_data_parity* %3, i32 %4) #0 {
  %6 = alloca %struct.r5l_log*, align 8
  %7 = alloca %struct.stripe_head*, align 8
  %8 = alloca %struct.r5l_recovery_ctx*, align 8
  %9 = alloca %struct.r5l_payload_data_parity*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mddev*, align 8
  %12 = alloca %struct.r5conf*, align 8
  %13 = alloca i32, align 4
  store %struct.r5l_log* %0, %struct.r5l_log** %6, align 8
  store %struct.stripe_head* %1, %struct.stripe_head** %7, align 8
  store %struct.r5l_recovery_ctx* %2, %struct.r5l_recovery_ctx** %8, align 8
  store %struct.r5l_payload_data_parity* %3, %struct.r5l_payload_data_parity** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.r5l_log*, %struct.r5l_log** %6, align 8
  %15 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.mddev*, %struct.mddev** %17, align 8
  store %struct.mddev* %18, %struct.mddev** %11, align 8
  %19 = load %struct.mddev*, %struct.mddev** %11, align 8
  %20 = getelementptr inbounds %struct.mddev, %struct.mddev* %19, i32 0, i32 0
  %21 = load %struct.r5conf*, %struct.r5conf** %20, align 8
  store %struct.r5conf* %21, %struct.r5conf** %12, align 8
  %22 = load %struct.r5conf*, %struct.r5conf** %12, align 8
  %23 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %9, align 8
  %24 = getelementptr inbounds %struct.r5l_payload_data_parity, %struct.r5l_payload_data_parity* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @le64_to_cpu(i32 %25)
  %27 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %28 = call i32 @raid5_compute_sector(%struct.r5conf* %22, i32 %26, i32 0, i32* %13, %struct.stripe_head* %27)
  %29 = load %struct.r5l_log*, %struct.r5l_log** %6, align 8
  %30 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %8, align 8
  %31 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %32 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @r5l_recovery_read_page(%struct.r5l_log* %29, %struct.r5l_recovery_ctx* %30, i32 %38, i32 %39)
  %41 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %9, align 8
  %42 = getelementptr inbounds %struct.r5l_payload_data_parity, %struct.r5l_payload_data_parity* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %48 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 %46, i32* %53, align 4
  %54 = load i64, i64* @BLOCK_SECTORS, align 8
  %55 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %8, align 8
  %56 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %54
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 4
  %61 = load i32, i32* @R5_Wantwrite, align 4
  %62 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %63 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = call i32 @set_bit(i32 %61, i32* %68)
  %70 = load i32, i32* @STRIPE_R5C_CACHING, align 4
  %71 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %72 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %71, i32 0, i32 0
  %73 = call i32 @set_bit(i32 %70, i32* %72)
  ret void
}

declare dso_local i32 @raid5_compute_sector(%struct.r5conf*, i32, i32, i32*, %struct.stripe_head*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @r5l_recovery_read_page(%struct.r5l_log*, %struct.r5l_recovery_ctx*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
