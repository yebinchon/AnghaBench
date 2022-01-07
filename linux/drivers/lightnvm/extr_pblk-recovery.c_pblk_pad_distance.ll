; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_pad_distance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_pad_distance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.nvm_tgt_dev* }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32, i32, i32 }
%struct.pblk_line = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, %struct.pblk_line*)* @pblk_pad_distance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_pad_distance(%struct.pblk* %0, %struct.pblk_line* %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.pblk_line*, align 8
  %5 = alloca %struct.nvm_tgt_dev*, align 8
  %6 = alloca %struct.nvm_geo*, align 8
  %7 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %4, align 8
  %8 = load %struct.pblk*, %struct.pblk** %3, align 8
  %9 = getelementptr inbounds %struct.pblk, %struct.pblk* %8, i32 0, i32 0
  %10 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %9, align 8
  store %struct.nvm_tgt_dev* %10, %struct.nvm_tgt_dev** %5, align 8
  %11 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %5, align 8
  %12 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %11, i32 0, i32 0
  store %struct.nvm_geo* %12, %struct.nvm_geo** %6, align 8
  %13 = load %struct.nvm_geo*, %struct.nvm_geo** %6, align 8
  %14 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nvm_geo*, %struct.nvm_geo** %6, align 8
  %17 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %15, %18
  %20 = load %struct.nvm_geo*, %struct.nvm_geo** %6, align 8
  %21 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %26 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %31 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  br label %35

33:                                               ; preds = %2
  %34 = load i32, i32* %7, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi i32 [ %32, %29 ], [ %34, %33 ]
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
