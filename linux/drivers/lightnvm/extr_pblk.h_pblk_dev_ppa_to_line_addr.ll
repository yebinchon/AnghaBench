; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk.h_pblk_dev_ppa_to_line_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk.h_pblk_dev_ppa_to_line_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_addrf, i32, %struct.nvm_tgt_dev* }
%struct.pblk_addrf = type { i32, i32, i32 }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i64 }
%struct.ppa_addr = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }
%struct.nvm_addrf_12 = type { i32, i32, i32, i32, i32 }

@NVM_OCSSD_SPEC_12 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, %struct.ppa_addr*)* @pblk_dev_ppa_to_line_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_dev_ppa_to_line_addr(%struct.pblk* %0, %struct.ppa_addr* byval(%struct.ppa_addr) align 8 %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.nvm_tgt_dev*, align 8
  %5 = alloca %struct.nvm_geo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvm_addrf_12*, align 8
  %8 = alloca %struct.pblk_addrf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  %11 = load %struct.pblk*, %struct.pblk** %3, align 8
  %12 = getelementptr inbounds %struct.pblk, %struct.pblk* %11, i32 0, i32 2
  %13 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %12, align 8
  store %struct.nvm_tgt_dev* %13, %struct.nvm_tgt_dev** %4, align 8
  %14 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %4, align 8
  %15 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %14, i32 0, i32 0
  store %struct.nvm_geo* %15, %struct.nvm_geo** %5, align 8
  %16 = load %struct.nvm_geo*, %struct.nvm_geo** %5, align 8
  %17 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NVM_OCSSD_SPEC_12, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %73

21:                                               ; preds = %2
  %22 = load %struct.pblk*, %struct.pblk** %3, align 8
  %23 = getelementptr inbounds %struct.pblk, %struct.pblk* %22, i32 0, i32 1
  %24 = bitcast i32* %23 to %struct.nvm_addrf_12*
  store %struct.nvm_addrf_12* %24, %struct.nvm_addrf_12** %7, align 8
  %25 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %1, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %30 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %28, %31
  store i32 %32, i32* %6, align 4
  %33 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %1, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %38 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %36, %39
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %1, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %48 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %46, %49
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %1, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %58 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %56, %59
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %1, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %68 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %66, %69
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %112

73:                                               ; preds = %2
  %74 = load %struct.pblk*, %struct.pblk** %3, align 8
  %75 = getelementptr inbounds %struct.pblk, %struct.pblk* %74, i32 0, i32 0
  store %struct.pblk_addrf* %75, %struct.pblk_addrf** %8, align 8
  %76 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %1, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %9, align 4
  %79 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %1, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = load %struct.pblk_addrf*, %struct.pblk_addrf** %8, align 8
  %84 = getelementptr inbounds %struct.pblk_addrf, %struct.pblk_addrf* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %82, %85
  store i32 %86, i32* %6, align 4
  %87 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %1, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = load %struct.pblk_addrf*, %struct.pblk_addrf** %8, align 8
  %92 = getelementptr inbounds %struct.pblk_addrf, %struct.pblk_addrf* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %90, %93
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.pblk_addrf*, %struct.pblk_addrf** %8, align 8
  %99 = getelementptr inbounds %struct.pblk_addrf, %struct.pblk_addrf* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @div_u64_rem(i32 %97, i32 %100, i32* %10)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.pblk_addrf*, %struct.pblk_addrf** %8, align 8
  %104 = getelementptr inbounds %struct.pblk_addrf, %struct.pblk_addrf* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %102, %105
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %73, %21
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i32 @div_u64_rem(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
