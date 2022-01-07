; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_line_emeta_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_line_emeta_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_line_meta, %struct.nvm_tgt_dev* }
%struct.pblk_line_meta = type { i32*, i32 }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32 }
%struct.pblk_line = type { i32, i32 }
%struct.ppa_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, %struct.pblk_line*)* @pblk_line_emeta_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_line_emeta_start(%struct.pblk* %0, %struct.pblk_line* %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.pblk_line*, align 8
  %5 = alloca %struct.nvm_tgt_dev*, align 8
  %6 = alloca %struct.nvm_geo*, align 8
  %7 = alloca %struct.pblk_line_meta*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ppa_addr, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ppa_addr, align 4
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %4, align 8
  %13 = load %struct.pblk*, %struct.pblk** %3, align 8
  %14 = getelementptr inbounds %struct.pblk, %struct.pblk* %13, i32 0, i32 1
  %15 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %14, align 8
  store %struct.nvm_tgt_dev* %15, %struct.nvm_tgt_dev** %5, align 8
  %16 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %5, align 8
  %17 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %16, i32 0, i32 0
  store %struct.nvm_geo* %17, %struct.nvm_geo** %6, align 8
  %18 = load %struct.pblk*, %struct.pblk** %3, align 8
  %19 = getelementptr inbounds %struct.pblk, %struct.pblk* %18, i32 0, i32 0
  store %struct.pblk_line_meta* %19, %struct.pblk_line_meta** %7, align 8
  %20 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %7, align 8
  %21 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %7, align 8
  %26 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %56, %2
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %9, align 4
  %34 = load %struct.pblk*, %struct.pblk** %3, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %37 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @addr_to_gen_ppa(%struct.pblk* %34, i32 %35, i32 %38)
  %40 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %12, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = bitcast %struct.ppa_addr* %10 to i8*
  %42 = bitcast %struct.ppa_addr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  %43 = load %struct.nvm_geo*, %struct.nvm_geo** %6, align 8
  %44 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %10, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pblk_ppa_to_pos(%struct.nvm_geo* %43, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %49 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @test_bit(i32 %47, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %31
  %54 = load i32, i32* %8, align 4
  %55 = add i32 %54, -1
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %53, %31
  br label %28

57:                                               ; preds = %28
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local i32 @addr_to_gen_ppa(%struct.pblk*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pblk_ppa_to_pos(%struct.nvm_geo*, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
