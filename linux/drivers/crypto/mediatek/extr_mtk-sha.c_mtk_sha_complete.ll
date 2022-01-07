; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cryp = type { i32 }
%struct.mtk_sha_rec = type { i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_cryp*, %struct.mtk_sha_rec*)* @mtk_sha_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_sha_complete(%struct.mtk_cryp* %0, %struct.mtk_sha_rec* %1) #0 {
  %3 = alloca %struct.mtk_cryp*, align 8
  %4 = alloca %struct.mtk_sha_rec*, align 8
  %5 = alloca i32, align 4
  store %struct.mtk_cryp* %0, %struct.mtk_cryp** %3, align 8
  store %struct.mtk_sha_rec* %1, %struct.mtk_sha_rec** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %7 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %4, align 8
  %8 = call i32 @mtk_sha_update_start(%struct.mtk_cryp* %6, %struct.mtk_sha_rec* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @EINPROGRESS, align 4
  %11 = sub nsw i32 0, %10
  %12 = icmp ne i32 %9, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.mtk_cryp*, %struct.mtk_cryp** %3, align 8
  %15 = load %struct.mtk_sha_rec*, %struct.mtk_sha_rec** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @mtk_sha_finish_req(%struct.mtk_cryp* %14, %struct.mtk_sha_rec* %15, i32 %16)
  br label %18

18:                                               ; preds = %13, %2
  ret void
}

declare dso_local i32 @mtk_sha_update_start(%struct.mtk_cryp*, %struct.mtk_sha_rec*) #1

declare dso_local i32 @mtk_sha_finish_req(%struct.mtk_cryp*, %struct.mtk_sha_rec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
