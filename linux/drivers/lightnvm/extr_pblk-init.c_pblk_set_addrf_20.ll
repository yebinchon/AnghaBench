; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_set_addrf_20.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_set_addrf_20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_geo = type { i32, i32, i32, %struct.nvm_addrf }
%struct.nvm_addrf = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.pblk_addrf = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvm_geo*, %struct.nvm_addrf*, %struct.pblk_addrf*)* @pblk_set_addrf_20 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_set_addrf_20(%struct.nvm_geo* %0, %struct.nvm_addrf* %1, %struct.pblk_addrf* %2) #0 {
  %4 = alloca %struct.nvm_geo*, align 8
  %5 = alloca %struct.nvm_addrf*, align 8
  %6 = alloca %struct.pblk_addrf*, align 8
  %7 = alloca %struct.nvm_addrf*, align 8
  store %struct.nvm_geo* %0, %struct.nvm_geo** %4, align 8
  store %struct.nvm_addrf* %1, %struct.nvm_addrf** %5, align 8
  store %struct.pblk_addrf* %2, %struct.pblk_addrf** %6, align 8
  %8 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %9 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %8, i32 0, i32 3
  store %struct.nvm_addrf* %9, %struct.nvm_addrf** %7, align 8
  %10 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %11 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @get_count_order(i32 %12)
  %14 = ptrtoint i8* %13 to i64
  %15 = load %struct.nvm_addrf*, %struct.nvm_addrf** %5, align 8
  %16 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %18 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @get_count_order(i32 %19)
  %21 = ptrtoint i8* %20 to i64
  %22 = load %struct.nvm_addrf*, %struct.nvm_addrf** %5, align 8
  %23 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.nvm_addrf*, %struct.nvm_addrf** %7, align 8
  %25 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.nvm_addrf*, %struct.nvm_addrf** %5, align 8
  %28 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load %struct.nvm_addrf*, %struct.nvm_addrf** %7, align 8
  %30 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.nvm_addrf*, %struct.nvm_addrf** %5, align 8
  %33 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %32, i32 0, i32 3
  store i64 %31, i64* %33, align 8
  %34 = load %struct.nvm_addrf*, %struct.nvm_addrf** %5, align 8
  %35 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load %struct.nvm_addrf*, %struct.nvm_addrf** %5, align 8
  %37 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.nvm_addrf*, %struct.nvm_addrf** %5, align 8
  %40 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %39, i32 0, i32 5
  store i64 %38, i64* %40, align 8
  %41 = load %struct.nvm_addrf*, %struct.nvm_addrf** %5, align 8
  %42 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.nvm_addrf*, %struct.nvm_addrf** %5, align 8
  %45 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %43, %46
  %48 = load %struct.nvm_addrf*, %struct.nvm_addrf** %5, align 8
  %49 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %48, i32 0, i32 6
  store i64 %47, i64* %49, align 8
  %50 = load %struct.nvm_addrf*, %struct.nvm_addrf** %5, align 8
  %51 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.nvm_addrf*, %struct.nvm_addrf** %5, align 8
  %54 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %52, %55
  %57 = load %struct.nvm_addrf*, %struct.nvm_addrf** %5, align 8
  %58 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %57, i32 0, i32 7
  store i64 %56, i64* %58, align 8
  %59 = load %struct.nvm_addrf*, %struct.nvm_addrf** %5, align 8
  %60 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = shl i64 1, %61
  %63 = sub i64 %62, 1
  %64 = load %struct.nvm_addrf*, %struct.nvm_addrf** %5, align 8
  %65 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = shl i64 %63, %66
  %68 = load %struct.nvm_addrf*, %struct.nvm_addrf** %5, align 8
  %69 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %68, i32 0, i32 8
  store i64 %67, i64* %69, align 8
  %70 = load %struct.nvm_addrf*, %struct.nvm_addrf** %5, align 8
  %71 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = shl i64 1, %72
  %74 = sub i64 %73, 1
  %75 = load %struct.nvm_addrf*, %struct.nvm_addrf** %5, align 8
  %76 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %75, i32 0, i32 7
  %77 = load i64, i64* %76, align 8
  %78 = shl i64 %74, %77
  %79 = load %struct.nvm_addrf*, %struct.nvm_addrf** %5, align 8
  %80 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %79, i32 0, i32 9
  store i64 %78, i64* %80, align 8
  %81 = load %struct.nvm_addrf*, %struct.nvm_addrf** %5, align 8
  %82 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = shl i64 1, %83
  %85 = sub i64 %84, 1
  %86 = load %struct.nvm_addrf*, %struct.nvm_addrf** %5, align 8
  %87 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = shl i64 %85, %88
  %90 = load %struct.nvm_addrf*, %struct.nvm_addrf** %5, align 8
  %91 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %90, i32 0, i32 10
  store i64 %89, i64* %91, align 8
  %92 = load %struct.nvm_addrf*, %struct.nvm_addrf** %5, align 8
  %93 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = shl i64 1, %94
  %96 = sub i64 %95, 1
  %97 = load %struct.nvm_addrf*, %struct.nvm_addrf** %5, align 8
  %98 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = shl i64 %96, %99
  %101 = load %struct.nvm_addrf*, %struct.nvm_addrf** %5, align 8
  %102 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %101, i32 0, i32 11
  store i64 %100, i64* %102, align 8
  %103 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %104 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.pblk_addrf*, %struct.pblk_addrf** %6, align 8
  %107 = getelementptr inbounds %struct.pblk_addrf, %struct.pblk_addrf* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %109 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.pblk_addrf*, %struct.pblk_addrf** %6, align 8
  %112 = getelementptr inbounds %struct.pblk_addrf, %struct.pblk_addrf* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %114 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.pblk_addrf*, %struct.pblk_addrf** %6, align 8
  %117 = getelementptr inbounds %struct.pblk_addrf, %struct.pblk_addrf* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  %118 = load %struct.pblk_addrf*, %struct.pblk_addrf** %6, align 8
  %119 = getelementptr inbounds %struct.pblk_addrf, %struct.pblk_addrf* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.pblk_addrf*, %struct.pblk_addrf** %6, align 8
  %122 = getelementptr inbounds %struct.pblk_addrf, %struct.pblk_addrf* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 %120, %123
  %125 = load %struct.pblk_addrf*, %struct.pblk_addrf** %6, align 8
  %126 = getelementptr inbounds %struct.pblk_addrf, %struct.pblk_addrf* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load %struct.pblk_addrf*, %struct.pblk_addrf** %6, align 8
  %128 = getelementptr inbounds %struct.pblk_addrf, %struct.pblk_addrf* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.pblk_addrf*, %struct.pblk_addrf** %6, align 8
  %131 = getelementptr inbounds %struct.pblk_addrf, %struct.pblk_addrf* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %129, %132
  %134 = load %struct.pblk_addrf*, %struct.pblk_addrf** %6, align 8
  %135 = getelementptr inbounds %struct.pblk_addrf, %struct.pblk_addrf* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 4
  %136 = load %struct.nvm_addrf*, %struct.nvm_addrf** %5, align 8
  %137 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %136, i32 0, i32 7
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.nvm_addrf*, %struct.nvm_addrf** %5, align 8
  %140 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = add i64 %138, %141
  %143 = trunc i64 %142 to i32
  ret i32 %143
}

declare dso_local i8* @get_count_order(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
