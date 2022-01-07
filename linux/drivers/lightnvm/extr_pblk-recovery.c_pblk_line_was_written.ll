; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_line_was_written.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_line_was_written.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk_line = type { i64, %struct.nvm_chk_meta*, i32 }
%struct.nvm_chk_meta = type { i32, i64 }
%struct.pblk = type { %struct.TYPE_2__*, %struct.nvm_tgt_dev*, %struct.pblk_line_meta }
%struct.TYPE_2__ = type { %struct.ppa_addr }
%struct.ppa_addr = type { i32 }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32 }
%struct.pblk_line_meta = type { i32, i64 }

@PBLK_LINESTATE_BAD = common dso_local global i64 0, align 8
@NVM_CHK_ST_CLOSED = common dso_local global i32 0, align 4
@NVM_CHK_ST_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk_line*, %struct.pblk*)* @pblk_line_was_written to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_line_was_written(%struct.pblk_line* %0, %struct.pblk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pblk_line*, align 8
  %5 = alloca %struct.pblk*, align 8
  %6 = alloca %struct.pblk_line_meta*, align 8
  %7 = alloca %struct.nvm_tgt_dev*, align 8
  %8 = alloca %struct.nvm_geo*, align 8
  %9 = alloca %struct.nvm_chk_meta*, align 8
  %10 = alloca %struct.ppa_addr, align 4
  %11 = alloca i32, align 4
  store %struct.pblk_line* %0, %struct.pblk_line** %4, align 8
  store %struct.pblk* %1, %struct.pblk** %5, align 8
  %12 = load %struct.pblk*, %struct.pblk** %5, align 8
  %13 = getelementptr inbounds %struct.pblk, %struct.pblk* %12, i32 0, i32 2
  store %struct.pblk_line_meta* %13, %struct.pblk_line_meta** %6, align 8
  %14 = load %struct.pblk*, %struct.pblk** %5, align 8
  %15 = getelementptr inbounds %struct.pblk, %struct.pblk* %14, i32 0, i32 1
  %16 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %15, align 8
  store %struct.nvm_tgt_dev* %16, %struct.nvm_tgt_dev** %7, align 8
  %17 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %7, align 8
  %18 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %17, i32 0, i32 0
  store %struct.nvm_geo* %18, %struct.nvm_geo** %8, align 8
  %19 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %20 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PBLK_LINESTATE_BAD, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %80

25:                                               ; preds = %2
  %26 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %27 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %30 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @find_first_zero_bit(i32 %28, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %35 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %80

39:                                               ; preds = %25
  %40 = load %struct.pblk*, %struct.pblk** %5, align 8
  %41 = getelementptr inbounds %struct.pblk, %struct.pblk* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = bitcast %struct.ppa_addr* %10 to i8*
  %48 = bitcast %struct.ppa_addr* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 4, i1 false)
  %49 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %50 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %49, i32 0, i32 1
  %51 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %50, align 8
  %52 = load %struct.nvm_geo*, %struct.nvm_geo** %8, align 8
  %53 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %10, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @pblk_ppa_to_pos(%struct.nvm_geo* %52, i32 %54)
  %56 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %51, i64 %55
  store %struct.nvm_chk_meta* %56, %struct.nvm_chk_meta** %9, align 8
  %57 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %9, align 8
  %58 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @NVM_CHK_ST_CLOSED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %39
  %64 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %9, align 8
  %65 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @NVM_CHK_ST_OPEN, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %63
  %71 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %9, align 8
  %72 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %75 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp sge i64 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %70, %39
  store i32 1, i32* %3, align 4
  br label %80

79:                                               ; preds = %70, %63
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %78, %38, %24
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @pblk_ppa_to_pos(%struct.nvm_geo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
