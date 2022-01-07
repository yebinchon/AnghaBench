; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_recovery_load_parity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_recovery_load_parity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_log = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mddev* }
%struct.mddev = type { %struct.r5conf* }
%struct.r5conf = type { i32 }
%struct.stripe_head = type { i64, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i8*, i32 }
%struct.r5l_recovery_ctx = type { i32 }
%struct.r5l_payload_data_parity = type { i32* }

@BLOCK_SECTORS = common dso_local global i32 0, align 4
@R5_Wantwrite = common dso_local global i32 0, align 4
@STRIPE_R5C_CACHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5l_log*, %struct.stripe_head*, %struct.r5l_recovery_ctx*, %struct.r5l_payload_data_parity*, i32)* @r5l_recovery_load_parity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r5l_recovery_load_parity(%struct.r5l_log* %0, %struct.stripe_head* %1, %struct.r5l_recovery_ctx* %2, %struct.r5l_payload_data_parity* %3, i32 %4) #0 {
  %6 = alloca %struct.r5l_log*, align 8
  %7 = alloca %struct.stripe_head*, align 8
  %8 = alloca %struct.r5l_recovery_ctx*, align 8
  %9 = alloca %struct.r5l_payload_data_parity*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mddev*, align 8
  %12 = alloca %struct.r5conf*, align 8
  store %struct.r5l_log* %0, %struct.r5l_log** %6, align 8
  store %struct.stripe_head* %1, %struct.stripe_head** %7, align 8
  store %struct.r5l_recovery_ctx* %2, %struct.r5l_recovery_ctx** %8, align 8
  store %struct.r5l_payload_data_parity* %3, %struct.r5l_payload_data_parity** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.r5l_log*, %struct.r5l_log** %6, align 8
  %14 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.mddev*, %struct.mddev** %16, align 8
  store %struct.mddev* %17, %struct.mddev** %11, align 8
  %18 = load %struct.mddev*, %struct.mddev** %11, align 8
  %19 = getelementptr inbounds %struct.mddev, %struct.mddev* %18, i32 0, i32 0
  %20 = load %struct.r5conf*, %struct.r5conf** %19, align 8
  store %struct.r5conf* %20, %struct.r5conf** %12, align 8
  %21 = load i32, i32* @BLOCK_SECTORS, align 4
  %22 = load %struct.r5conf*, %struct.r5conf** %12, align 8
  %23 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %8, align 8
  %27 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.r5l_log*, %struct.r5l_log** %6, align 8
  %31 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %8, align 8
  %32 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %33 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %32, i32 0, i32 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %36 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @r5l_recovery_read_page(%struct.r5l_log* %30, %struct.r5l_recovery_ctx* %31, i32 %40, i32 %41)
  %43 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %9, align 8
  %44 = getelementptr inbounds %struct.r5l_payload_data_parity, %struct.r5l_payload_data_parity* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @le32_to_cpu(i32 %47)
  %49 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %50 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %49, i32 0, i32 3
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %53 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i8* %48, i8** %56, align 8
  %57 = load i32, i32* @R5_Wantwrite, align 4
  %58 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %59 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %58, i32 0, i32 3
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %62 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @set_bit(i32 %57, i32* %65)
  %67 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %68 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp uge i64 %69, 0
  br i1 %70, label %71, label %112

71:                                               ; preds = %5
  %72 = load %struct.r5l_log*, %struct.r5l_log** %6, align 8
  %73 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %8, align 8
  %74 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %75 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %74, i32 0, i32 3
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %78 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.r5l_log*, %struct.r5l_log** %6, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @BLOCK_SECTORS, align 4
  %86 = call i32 @r5l_ring_add(%struct.r5l_log* %83, i32 %84, i32 %85)
  %87 = call i32 @r5l_recovery_read_page(%struct.r5l_log* %72, %struct.r5l_recovery_ctx* %73, i32 %82, i32 %86)
  %88 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %9, align 8
  %89 = getelementptr inbounds %struct.r5l_payload_data_parity, %struct.r5l_payload_data_parity* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @le32_to_cpu(i32 %92)
  %94 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %95 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %94, i32 0, i32 3
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %98 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i8* %93, i8** %101, align 8
  %102 = load i32, i32* @R5_Wantwrite, align 4
  %103 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %104 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %103, i32 0, i32 3
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %107 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = call i32 @set_bit(i32 %102, i32* %110)
  br label %112

112:                                              ; preds = %71, %5
  %113 = load i32, i32* @STRIPE_R5C_CACHING, align 4
  %114 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %115 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %114, i32 0, i32 2
  %116 = call i32 @clear_bit(i32 %113, i32* %115)
  ret void
}

declare dso_local i32 @r5l_recovery_read_page(%struct.r5l_log*, %struct.r5l_recovery_ctx*, i32, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @r5l_ring_add(%struct.r5l_log*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
