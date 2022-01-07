; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-sysfs.c_pblk_sysfs_luns_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-sysfs.c_pblk_sysfs_luns_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_lun*, %struct.nvm_tgt_dev* }
%struct.pblk_lun = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"pblk: pos:%d, ch:%d, lun:%d - %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, i8*)* @pblk_sysfs_luns_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_sysfs_luns_show(%struct.pblk* %0, i8* %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nvm_tgt_dev*, align 8
  %6 = alloca %struct.nvm_geo*, align 8
  %7 = alloca %struct.pblk_lun*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.pblk*, %struct.pblk** %3, align 8
  %12 = getelementptr inbounds %struct.pblk, %struct.pblk* %11, i32 0, i32 1
  %13 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %12, align 8
  store %struct.nvm_tgt_dev* %13, %struct.nvm_tgt_dev** %5, align 8
  %14 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %5, align 8
  %15 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %14, i32 0, i32 0
  store %struct.nvm_geo* %15, %struct.nvm_geo** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %60, %2
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.nvm_geo*, %struct.nvm_geo** %6, align 8
  %19 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %63

22:                                               ; preds = %16
  store i32 1, i32* %10, align 4
  %23 = load %struct.pblk*, %struct.pblk** %3, align 8
  %24 = getelementptr inbounds %struct.pblk, %struct.pblk* %23, i32 0, i32 0
  %25 = load %struct.pblk_lun*, %struct.pblk_lun** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.pblk_lun, %struct.pblk_lun* %25, i64 %27
  store %struct.pblk_lun* %28, %struct.pblk_lun** %7, align 8
  %29 = load %struct.pblk_lun*, %struct.pblk_lun** %7, align 8
  %30 = getelementptr inbounds %struct.pblk_lun, %struct.pblk_lun* %29, i32 0, i32 1
  %31 = call i32 @down_trylock(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %22
  store i32 0, i32* %10, align 4
  %34 = load %struct.pblk_lun*, %struct.pblk_lun** %7, align 8
  %35 = getelementptr inbounds %struct.pblk_lun, %struct.pblk_lun* %34, i32 0, i32 1
  %36 = call i32 @up(i32* %35)
  br label %37

37:                                               ; preds = %33, %22
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 %42, %43
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.pblk_lun*, %struct.pblk_lun** %7, align 8
  %47 = getelementptr inbounds %struct.pblk_lun, %struct.pblk_lun* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.pblk_lun*, %struct.pblk_lun** %7, align 8
  %52 = getelementptr inbounds %struct.pblk_lun, %struct.pblk_lun* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @snprintf(i8* %41, i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %50, i32 %55, i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %37
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %16

63:                                               ; preds = %16
  %64 = load i32, i32* %8, align 4
  ret i32 %64
}

declare dso_local i32 @down_trylock(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
