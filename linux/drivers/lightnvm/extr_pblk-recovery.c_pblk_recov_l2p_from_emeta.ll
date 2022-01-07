; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_recov_l2p_from_emeta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_recov_l2p_from_emeta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_line_meta, %struct.nvm_tgt_dev* }
%struct.pblk_line_meta = type { i64 }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32 }
%struct.pblk_line = type { i64, i64, i32, i32, i32, i32, i32, %struct.pblk_emeta* }
%struct.pblk_emeta = type { %struct.line_emeta* }
%struct.line_emeta = type { i32 }
%struct.ppa_addr = type { i32 }

@ADDR_EMPTY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"pblk: rec. double invalidate:\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"line %d - inconsistent lba list(%llu/%llu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, %struct.pblk_line*)* @pblk_recov_l2p_from_emeta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_recov_l2p_from_emeta(%struct.pblk* %0, %struct.pblk_line* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.pblk_line*, align 8
  %6 = alloca %struct.nvm_tgt_dev*, align 8
  %7 = alloca %struct.nvm_geo*, align 8
  %8 = alloca %struct.pblk_line_meta*, align 8
  %9 = alloca %struct.pblk_emeta*, align 8
  %10 = alloca %struct.line_emeta*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ppa_addr, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ppa_addr, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %5, align 8
  %20 = load %struct.pblk*, %struct.pblk** %4, align 8
  %21 = getelementptr inbounds %struct.pblk, %struct.pblk* %20, i32 0, i32 1
  %22 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %21, align 8
  store %struct.nvm_tgt_dev* %22, %struct.nvm_tgt_dev** %6, align 8
  %23 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %6, align 8
  %24 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %23, i32 0, i32 0
  store %struct.nvm_geo* %24, %struct.nvm_geo** %7, align 8
  %25 = load %struct.pblk*, %struct.pblk** %4, align 8
  %26 = getelementptr inbounds %struct.pblk, %struct.pblk* %25, i32 0, i32 0
  store %struct.pblk_line_meta* %26, %struct.pblk_line_meta** %8, align 8
  %27 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %28 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %27, i32 0, i32 7
  %29 = load %struct.pblk_emeta*, %struct.pblk_emeta** %28, align 8
  store %struct.pblk_emeta* %29, %struct.pblk_emeta** %9, align 8
  %30 = load %struct.pblk_emeta*, %struct.pblk_emeta** %9, align 8
  %31 = getelementptr inbounds %struct.pblk_emeta, %struct.pblk_emeta* %30, i32 0, i32 0
  %32 = load %struct.line_emeta*, %struct.line_emeta** %31, align 8
  store %struct.line_emeta* %32, %struct.line_emeta** %10, align 8
  store i64 0, i64* %15, align 8
  %33 = load %struct.pblk*, %struct.pblk** %4, align 8
  %34 = load %struct.line_emeta*, %struct.line_emeta** %10, align 8
  %35 = call i32* @emeta_to_lbas(%struct.pblk* %33, %struct.line_emeta* %34)
  store i32* %35, i32** %11, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %139

39:                                               ; preds = %2
  %40 = load %struct.pblk*, %struct.pblk** %4, align 8
  %41 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %42 = call i64 @pblk_line_smeta_start(%struct.pblk* %40, %struct.pblk_line* %41)
  %43 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %8, align 8
  %44 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %42, %45
  store i64 %46, i64* %12, align 8
  %47 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %48 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %13, align 8
  %50 = load %struct.line_emeta*, %struct.line_emeta** %10, align 8
  %51 = getelementptr inbounds %struct.line_emeta, %struct.line_emeta* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @le64_to_cpu(i32 %52)
  store i64 %53, i64* %14, align 8
  %54 = load i64, i64* %12, align 8
  store i64 %54, i64* %16, align 8
  br label %55

55:                                               ; preds = %121, %39
  %56 = load i64, i64* %16, align 8
  %57 = load i64, i64* %13, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %124

59:                                               ; preds = %55
  %60 = load %struct.pblk*, %struct.pblk** %4, align 8
  %61 = load i64, i64* %16, align 8
  %62 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %63 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @addr_to_gen_ppa(%struct.pblk* %60, i64 %61, i32 %64)
  %66 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %19, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = bitcast %struct.ppa_addr* %17 to i8*
  %68 = bitcast %struct.ppa_addr* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 %68, i64 4, i1 false)
  %69 = load %struct.nvm_geo*, %struct.nvm_geo** %7, align 8
  %70 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %17, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @pblk_ppa_to_pos(%struct.nvm_geo* %69, i32 %71)
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %18, align 4
  %74 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %75 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @test_bit(i32 %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %59
  br label %121

80:                                               ; preds = %59
  %81 = load i32*, i32** %11, align 8
  %82 = load i64, i64* %16, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @le64_to_cpu(i32 %84)
  %86 = load i64, i64* @ADDR_EMPTY, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %80
  %89 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %90 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %89, i32 0, i32 3
  %91 = call i32 @spin_lock(i32* %90)
  %92 = load i64, i64* %16, align 8
  %93 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %94 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @test_and_set_bit(i64 %92, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %105

100:                                              ; preds = %88
  %101 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %102 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @le32_add_cpu(i32 %103, i32 -1)
  br label %105

105:                                              ; preds = %100, %98
  %106 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %107 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %106, i32 0, i32 3
  %108 = call i32 @spin_unlock(i32* %107)
  br label %121

109:                                              ; preds = %80
  %110 = load %struct.pblk*, %struct.pblk** %4, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = load i64, i64* %16, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @le64_to_cpu(i32 %114)
  %116 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %17, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @pblk_update_map(%struct.pblk* %110, i64 %115, i32 %117)
  %119 = load i64, i64* %15, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %15, align 8
  br label %121

121:                                              ; preds = %109, %105, %79
  %122 = load i64, i64* %16, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %16, align 8
  br label %55

124:                                              ; preds = %55
  %125 = load i64, i64* %14, align 8
  %126 = load i64, i64* %15, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %124
  %129 = load %struct.pblk*, %struct.pblk** %4, align 8
  %130 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %131 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i64, i64* %14, align 8
  %134 = load i64, i64* %15, align 8
  %135 = call i32 @pblk_err(%struct.pblk* %129, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %132, i64 %133, i64 %134)
  br label %136

136:                                              ; preds = %128, %124
  %137 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %138 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %137, i32 0, i32 1
  store i64 0, i64* %138, align 8
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %136, %38
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32* @emeta_to_lbas(%struct.pblk*, %struct.line_emeta*) #1

declare dso_local i64 @pblk_line_smeta_start(%struct.pblk*, %struct.pblk_line*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @addr_to_gen_ppa(%struct.pblk*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pblk_ppa_to_pos(%struct.nvm_geo*, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_and_set_bit(i64, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @le32_add_cpu(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pblk_update_map(%struct.pblk*, i64, i32) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
