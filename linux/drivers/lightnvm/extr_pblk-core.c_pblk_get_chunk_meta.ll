; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_get_chunk_meta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_get_chunk_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_chk_meta = type { i32 }
%struct.pblk = type { %struct.nvm_tgt_dev* }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32 }
%struct.ppa_addr = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nvm_chk_meta* @pblk_get_chunk_meta(%struct.pblk* %0) #0 {
  %2 = alloca %struct.nvm_chk_meta*, align 8
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.nvm_tgt_dev*, align 8
  %5 = alloca %struct.nvm_geo*, align 8
  %6 = alloca %struct.nvm_chk_meta*, align 8
  %7 = alloca %struct.ppa_addr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  %10 = load %struct.pblk*, %struct.pblk** %3, align 8
  %11 = getelementptr inbounds %struct.pblk, %struct.pblk* %10, i32 0, i32 0
  %12 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %11, align 8
  store %struct.nvm_tgt_dev* %12, %struct.nvm_tgt_dev** %4, align 8
  %13 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %4, align 8
  %14 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %13, i32 0, i32 0
  store %struct.nvm_geo* %14, %struct.nvm_geo** %5, align 8
  %15 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %7, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %17 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call %struct.nvm_chk_meta* @vzalloc(i64 %21)
  store %struct.nvm_chk_meta* %22, %struct.nvm_chk_meta** %6, align 8
  %23 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %6, align 8
  %24 = icmp ne %struct.nvm_chk_meta* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.nvm_chk_meta* @ERR_PTR(i32 %27)
  store %struct.nvm_chk_meta* %28, %struct.nvm_chk_meta** %2, align 8
  br label %48

29:                                               ; preds = %1
  %30 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %4, align 8
  %31 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %32 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %6, align 8
  %35 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %7, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @nvm_get_chunk_meta(%struct.nvm_tgt_dev* %30, i64 %36, i32 %33, %struct.nvm_chk_meta* %34)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %29
  %41 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %6, align 8
  %42 = call i32 @vfree(%struct.nvm_chk_meta* %41)
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.nvm_chk_meta* @ERR_PTR(i32 %44)
  store %struct.nvm_chk_meta* %45, %struct.nvm_chk_meta** %2, align 8
  br label %48

46:                                               ; preds = %29
  %47 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %6, align 8
  store %struct.nvm_chk_meta* %47, %struct.nvm_chk_meta** %2, align 8
  br label %48

48:                                               ; preds = %46, %40, %25
  %49 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %2, align 8
  ret %struct.nvm_chk_meta* %49
}

declare dso_local %struct.nvm_chk_meta* @vzalloc(i64) #1

declare dso_local %struct.nvm_chk_meta* @ERR_PTR(i32) #1

declare dso_local i32 @nvm_get_chunk_meta(%struct.nvm_tgt_dev*, i64, i32, %struct.nvm_chk_meta*) #1

declare dso_local i32 @vfree(%struct.nvm_chk_meta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
