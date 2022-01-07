; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_prepare_new_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_prepare_new_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_lun*, %struct.nvm_tgt_dev*, %struct.pblk_line_meta }
%struct.pblk_lun = type { i32 }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32 }
%struct.pblk_line_meta = type { i32 }
%struct.pblk_line = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@NVM_CHK_ST_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, %struct.pblk_line*)* @pblk_prepare_new_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_prepare_new_line(%struct.pblk* %0, %struct.pblk_line* %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.pblk_line*, align 8
  %5 = alloca %struct.pblk_line_meta*, align 8
  %6 = alloca %struct.nvm_tgt_dev*, align 8
  %7 = alloca %struct.nvm_geo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pblk_lun*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %4, align 8
  %13 = load %struct.pblk*, %struct.pblk** %3, align 8
  %14 = getelementptr inbounds %struct.pblk, %struct.pblk* %13, i32 0, i32 2
  store %struct.pblk_line_meta* %14, %struct.pblk_line_meta** %5, align 8
  %15 = load %struct.pblk*, %struct.pblk** %3, align 8
  %16 = getelementptr inbounds %struct.pblk, %struct.pblk* %15, i32 0, i32 1
  %17 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %16, align 8
  store %struct.nvm_tgt_dev* %17, %struct.nvm_tgt_dev** %6, align 8
  %18 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %6, align 8
  %19 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %18, i32 0, i32 0
  store %struct.nvm_geo* %19, %struct.nvm_geo** %7, align 8
  %20 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %21 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %20, i32 0, i32 2
  %22 = call i32 @atomic_read(i32* %21)
  store i32 %22, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %66, %2
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %5, align 8
  %26 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %69

29:                                               ; preds = %23
  %30 = load %struct.pblk*, %struct.pblk** %3, align 8
  %31 = getelementptr inbounds %struct.pblk, %struct.pblk* %30, i32 0, i32 0
  %32 = load %struct.pblk_lun*, %struct.pblk_lun** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.pblk_lun, %struct.pblk_lun* %32, i64 %34
  store %struct.pblk_lun* %35, %struct.pblk_lun** %10, align 8
  %36 = load %struct.nvm_geo*, %struct.nvm_geo** %7, align 8
  %37 = load %struct.pblk_lun*, %struct.pblk_lun** %10, align 8
  %38 = getelementptr inbounds %struct.pblk_lun, %struct.pblk_lun* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pblk_ppa_to_pos(%struct.nvm_geo* %36, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %42 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @NVM_CHK_ST_FREE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %29
  %54 = load %struct.nvm_geo*, %struct.nvm_geo** %7, align 8
  %55 = load %struct.pblk_lun*, %struct.pblk_lun** %10, align 8
  %56 = getelementptr inbounds %struct.pblk_lun, %struct.pblk_lun* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pblk_ppa_to_pos(%struct.nvm_geo* %54, i32 %57)
  %59 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %60 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @set_bit(i32 %58, i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %53, %29
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %23

69:                                               ; preds = %23
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @pblk_ppa_to_pos(%struct.nvm_geo*, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
