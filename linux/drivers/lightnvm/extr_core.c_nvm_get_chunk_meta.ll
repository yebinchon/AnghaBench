; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_get_chunk_meta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_get_chunk_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_tgt_dev = type { %struct.nvm_dev* }
%struct.nvm_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.nvm_dev*, i32, i32, %struct.nvm_chk_meta*)* }
%struct.TYPE_3__ = type { i64 }
%struct.nvm_chk_meta = type { i32 }
%struct.ppa_addr = type { i64 }

@NVM_OCSSD_SPEC_12 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvm_get_chunk_meta(%struct.nvm_tgt_dev* %0, i64 %1, i32 %2, %struct.nvm_chk_meta* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ppa_addr, align 8
  %7 = alloca %struct.nvm_tgt_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvm_chk_meta*, align 8
  %10 = alloca %struct.nvm_dev*, align 8
  %11 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %6, i32 0, i32 0
  store i64 %1, i64* %11, align 8
  store %struct.nvm_tgt_dev* %0, %struct.nvm_tgt_dev** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nvm_chk_meta* %3, %struct.nvm_chk_meta** %9, align 8
  %12 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %7, align 8
  %13 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %12, i32 0, i32 0
  %14 = load %struct.nvm_dev*, %struct.nvm_dev** %13, align 8
  store %struct.nvm_dev* %14, %struct.nvm_dev** %10, align 8
  %15 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %7, align 8
  %16 = call i32 @nvm_ppa_tgt_to_dev(%struct.nvm_tgt_dev* %15, %struct.ppa_addr* %6, i32 1)
  %17 = load %struct.nvm_dev*, %struct.nvm_dev** %10, align 8
  %18 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NVM_OCSSD_SPEC_12, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  %24 = load %struct.nvm_dev*, %struct.nvm_dev** %10, align 8
  %25 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %6, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %9, align 8
  %30 = call i32 @nvm_get_bb_meta(%struct.nvm_dev* %24, i32 %27, i32 %28, %struct.nvm_chk_meta* %29)
  store i32 %30, i32* %5, align 4
  br label %44

31:                                               ; preds = %4
  %32 = load %struct.nvm_dev*, %struct.nvm_dev** %10, align 8
  %33 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (%struct.nvm_dev*, i32, i32, %struct.nvm_chk_meta*)*, i32 (%struct.nvm_dev*, i32, i32, %struct.nvm_chk_meta*)** %35, align 8
  %37 = load %struct.nvm_dev*, %struct.nvm_dev** %10, align 8
  %38 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %6, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %9, align 8
  %43 = call i32 %36(%struct.nvm_dev* %37, i32 %40, i32 %41, %struct.nvm_chk_meta* %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %31, %23
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @nvm_ppa_tgt_to_dev(%struct.nvm_tgt_dev*, %struct.ppa_addr*, i32) #1

declare dso_local i32 @nvm_get_bb_meta(%struct.nvm_dev*, i32, i32, %struct.nvm_chk_meta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
