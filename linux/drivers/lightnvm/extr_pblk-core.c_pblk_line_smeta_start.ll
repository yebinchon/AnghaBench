; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_smeta_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_smeta_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_line_meta, %struct.nvm_tgt_dev* }
%struct.pblk_line_meta = type { i32 }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32 }
%struct.pblk_line = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pblk_line_smeta_start(%struct.pblk* %0, %struct.pblk_line* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.pblk_line*, align 8
  %6 = alloca %struct.nvm_tgt_dev*, align 8
  %7 = alloca %struct.nvm_geo*, align 8
  %8 = alloca %struct.pblk_line_meta*, align 8
  %9 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %5, align 8
  %10 = load %struct.pblk*, %struct.pblk** %4, align 8
  %11 = getelementptr inbounds %struct.pblk, %struct.pblk* %10, i32 0, i32 1
  %12 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %11, align 8
  store %struct.nvm_tgt_dev* %12, %struct.nvm_tgt_dev** %6, align 8
  %13 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %6, align 8
  %14 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %13, i32 0, i32 0
  store %struct.nvm_geo* %14, %struct.nvm_geo** %7, align 8
  %15 = load %struct.pblk*, %struct.pblk** %4, align 8
  %16 = getelementptr inbounds %struct.pblk, %struct.pblk* %15, i32 0, i32 0
  store %struct.pblk_line_meta* %16, %struct.pblk_line_meta** %8, align 8
  %17 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %18 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %8, align 8
  %21 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @find_first_zero_bit(i32 %19, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %8, align 8
  %26 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %36

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.nvm_geo*, %struct.nvm_geo** %7, align 8
  %33 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %30, %29
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
