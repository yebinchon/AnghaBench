; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_finish_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_finish_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cryp = type { i32 }
%struct.mtk_sha_rec = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i32)* }

@SHA_FLAGS_FINAL = common dso_local global i32 0, align 4
@SHA_FLAGS_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_cryp*, %struct.mtk_sha_rec*, i32)* @mtk_sha_finish_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_sha_finish_req(%struct.mtk_cryp* %0, %struct.mtk_sha_rec* %1, i32 %2) #0 {
  %4 = alloca %struct.mtk_cryp*, align 8
  %5 = alloca %struct.mtk_sha_rec*, align 8
  %6 = alloca i32, align 4
  store %struct.mtk_cryp* %0, %struct.mtk_cryp** %4, align 8
  store %struct.mtk_sha_rec* %1, %struct.mtk_sha_rec** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %3
  %10 = load i32, i32* @SHA_FLAGS_FINAL, align 4
  %11 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %5, align 8
  %12 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %9, %3
  %17 = phi i1 [ false, %3 ], [ %15, %9 ]
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %5, align 8
  %23 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = call i32 @mtk_sha_finish(%struct.TYPE_4__* %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %21, %16
  %27 = load i32, i32* @SHA_FLAGS_BUSY, align 4
  %28 = load i32, i32* @SHA_FLAGS_FINAL, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %5, align 8
  %32 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %5, align 8
  %36 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %39, align 8
  %41 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %5, align 8
  %42 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %6, align 4
  %46 = call i32 %40(%struct.TYPE_3__* %44, i32 %45)
  %47 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %5, align 8
  %48 = getelementptr inbounds %struct.mtk_sha_rec, %struct.mtk_sha_rec* %47, i32 0, i32 1
  %49 = call i32 @tasklet_schedule(i32* %48)
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @mtk_sha_finish(%struct.TYPE_4__*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
