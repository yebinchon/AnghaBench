; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-write.c_pblk_valid_meta_ppa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-write.c_pblk_valid_meta_ppa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.nvm_tgt_dev* }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32 }
%struct.pblk_line = type { i64, i32 }
%struct.nvm_rq = type { i32 }
%struct.pblk_c_ctx = type { i32 }
%struct.ppa_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, %struct.pblk_line*, %struct.nvm_rq*)* @pblk_valid_meta_ppa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_valid_meta_ppa(%struct.pblk* %0, %struct.pblk_line* %1, %struct.nvm_rq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pblk*, align 8
  %6 = alloca %struct.pblk_line*, align 8
  %7 = alloca %struct.nvm_rq*, align 8
  %8 = alloca %struct.nvm_tgt_dev*, align 8
  %9 = alloca %struct.nvm_geo*, align 8
  %10 = alloca %struct.pblk_c_ctx*, align 8
  %11 = alloca %struct.pblk_line*, align 8
  %12 = alloca %struct.ppa_addr, align 4
  %13 = alloca %struct.ppa_addr, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ppa_addr, align 4
  %17 = alloca %struct.ppa_addr, align 4
  store %struct.pblk* %0, %struct.pblk** %5, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %6, align 8
  store %struct.nvm_rq* %2, %struct.nvm_rq** %7, align 8
  %18 = load %struct.pblk*, %struct.pblk** %5, align 8
  %19 = getelementptr inbounds %struct.pblk, %struct.pblk* %18, i32 0, i32 0
  %20 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %19, align 8
  store %struct.nvm_tgt_dev* %20, %struct.nvm_tgt_dev** %8, align 8
  %21 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %8, align 8
  %22 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %21, i32 0, i32 0
  store %struct.nvm_geo* %22, %struct.nvm_geo** %9, align 8
  %23 = load %struct.nvm_rq*, %struct.nvm_rq** %7, align 8
  %24 = call %struct.pblk_c_ctx* @nvm_rq_to_pdu(%struct.nvm_rq* %23)
  store %struct.pblk_c_ctx* %24, %struct.pblk_c_ctx** %10, align 8
  %25 = load %struct.pblk*, %struct.pblk** %5, align 8
  %26 = call %struct.pblk_line* @pblk_line_get_data(%struct.pblk* %25)
  store %struct.pblk_line* %26, %struct.pblk_line** %11, align 8
  %27 = load %struct.pblk*, %struct.pblk** %5, align 8
  %28 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %29 = call i64 @pblk_lookup_page(%struct.pblk* %27, %struct.pblk_line* %28)
  store i64 %29, i64* %14, align 8
  %30 = load %struct.pblk*, %struct.pblk** %5, align 8
  %31 = load i64, i64* %14, align 8
  %32 = call i32 @addr_to_gen_ppa(%struct.pblk* %30, i64 %31, i32 0)
  %33 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %16, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = bitcast %struct.ppa_addr* %12 to i8*
  %35 = bitcast %struct.ppa_addr* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 4, i1 false)
  %36 = load %struct.pblk*, %struct.pblk** %5, align 8
  %37 = load i64, i64* %14, align 8
  %38 = load %struct.pblk_line*, %struct.pblk_line** %11, align 8
  %39 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = call i32 @addr_to_gen_ppa(%struct.pblk* %36, i64 %41, i32 0)
  %43 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %17, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = bitcast %struct.ppa_addr* %13 to i8*
  %45 = bitcast %struct.ppa_addr* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 4, i1 false)
  %46 = load %struct.nvm_geo*, %struct.nvm_geo** %9, align 8
  %47 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %13, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pblk_ppa_to_pos(%struct.nvm_geo* %46, i32 %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load %struct.pblk_c_ctx*, %struct.pblk_c_ctx** %10, align 8
  %52 = getelementptr inbounds %struct.pblk_c_ctx, %struct.pblk_c_ctx* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @test_bit(i32 %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %3
  %57 = load i32, i32* %15, align 4
  %58 = load %struct.pblk_line*, %struct.pblk_line** %11, align 8
  %59 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @test_bit(i32 %57, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56, %3
  store i32 1, i32* %4, align 4
  br label %78

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %13, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %12, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @pblk_ppa_comp(i32 %66, i32 %68)
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load %struct.pblk_line*, %struct.pblk_line** %11, align 8
  %74 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, -1
  store i64 %76, i64* %74, align 8
  br label %77

77:                                               ; preds = %72, %64
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %63
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.pblk_c_ctx* @nvm_rq_to_pdu(%struct.nvm_rq*) #1

declare dso_local %struct.pblk_line* @pblk_line_get_data(%struct.pblk*) #1

declare dso_local i64 @pblk_lookup_page(%struct.pblk*, %struct.pblk_line*) #1

declare dso_local i32 @addr_to_gen_ppa(%struct.pblk*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pblk_ppa_to_pos(%struct.nvm_geo*, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pblk_ppa_comp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
