; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_up_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_up_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_lun*, %struct.nvm_tgt_dev* }
%struct.pblk_lun = type { i32 }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pblk_up_rq(%struct.pblk* %0, i64* %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.nvm_tgt_dev*, align 8
  %6 = alloca %struct.nvm_geo*, align 8
  %7 = alloca %struct.pblk_lun*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store i64* %1, i64** %4, align 8
  %10 = load %struct.pblk*, %struct.pblk** %3, align 8
  %11 = getelementptr inbounds %struct.pblk, %struct.pblk* %10, i32 0, i32 1
  %12 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %11, align 8
  store %struct.nvm_tgt_dev* %12, %struct.nvm_tgt_dev** %5, align 8
  %13 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %5, align 8
  %14 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %13, i32 0, i32 0
  store %struct.nvm_geo* %14, %struct.nvm_geo** %6, align 8
  %15 = load %struct.nvm_geo*, %struct.nvm_geo** %6, align 8
  %16 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  br label %18

18:                                               ; preds = %26, %2
  %19 = load i64*, i64** %4, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %21, 1
  %23 = call i32 @find_next_bit(i64* %19, i32 %20, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %18
  %27 = load %struct.pblk*, %struct.pblk** %3, align 8
  %28 = getelementptr inbounds %struct.pblk, %struct.pblk* %27, i32 0, i32 0
  %29 = load %struct.pblk_lun*, %struct.pblk_lun** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.pblk_lun, %struct.pblk_lun* %29, i64 %31
  store %struct.pblk_lun* %32, %struct.pblk_lun** %7, align 8
  %33 = load %struct.pblk_lun*, %struct.pblk_lun** %7, align 8
  %34 = getelementptr inbounds %struct.pblk_lun, %struct.pblk_lun* %33, i32 0, i32 0
  %35 = call i32 @up(i32* %34)
  br label %18

36:                                               ; preds = %18
  ret void
}

declare dso_local i32 @find_next_bit(i64*, i32, i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
