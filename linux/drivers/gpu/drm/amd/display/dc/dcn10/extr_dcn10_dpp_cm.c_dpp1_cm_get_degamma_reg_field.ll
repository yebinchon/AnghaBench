; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_cm.c_dpp1_cm_get_degamma_reg_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_cm.c_dpp1_cm_get_degamma_reg_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn10_dpp = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfer_func_reg = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcn10_dpp*, %struct.xfer_func_reg*)* @dpp1_cm_get_degamma_reg_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpp1_cm_get_degamma_reg_field(%struct.dcn10_dpp* %0, %struct.xfer_func_reg* %1) #0 {
  %3 = alloca %struct.dcn10_dpp*, align 8
  %4 = alloca %struct.xfer_func_reg*, align 8
  store %struct.dcn10_dpp* %0, %struct.dcn10_dpp** %3, align 8
  store %struct.xfer_func_reg* %1, %struct.xfer_func_reg** %4, align 8
  %5 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %3, align 8
  %6 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %5, i32 0, i32 1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %11 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 9
  store i32 %9, i32* %12, align 4
  %13 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %3, align 8
  %14 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %19 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 9
  store i32 %17, i32* %20, align 4
  %21 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %3, align 8
  %22 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %27 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 8
  store i32 %25, i32* %28, align 4
  %29 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %3, align 8
  %30 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %35 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 8
  store i32 %33, i32* %36, align 4
  %37 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %3, align 8
  %38 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %43 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 7
  store i32 %41, i32* %44, align 4
  %45 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %3, align 8
  %46 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %51 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 7
  store i32 %49, i32* %52, align 4
  %53 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %3, align 8
  %54 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %59 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 6
  store i32 %57, i32* %60, align 4
  %61 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %3, align 8
  %62 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %67 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 6
  store i32 %65, i32* %68, align 4
  %69 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %3, align 8
  %70 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %75 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 5
  store i32 %73, i32* %76, align 4
  %77 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %3, align 8
  %78 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %83 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 5
  store i32 %81, i32* %84, align 4
  %85 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %3, align 8
  %86 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %91 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 4
  store i32 %89, i32* %92, align 4
  %93 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %3, align 8
  %94 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %99 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 4
  store i32 %97, i32* %100, align 4
  %101 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %3, align 8
  %102 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %107 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 3
  store i32 %105, i32* %108, align 4
  %109 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %3, align 8
  %110 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %109, i32 0, i32 0
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %115 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 3
  store i32 %113, i32* %116, align 4
  %117 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %3, align 8
  %118 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %117, i32 0, i32 1
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %123 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  store i32 %121, i32* %124, align 4
  %125 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %3, align 8
  %126 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %125, i32 0, i32 0
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %131 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  store i32 %129, i32* %132, align 4
  %133 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %3, align 8
  %134 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %133, i32 0, i32 1
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %139 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  store i32 %137, i32* %140, align 4
  %141 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %3, align 8
  %142 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %141, i32 0, i32 0
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %147 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  store i32 %145, i32* %148, align 4
  %149 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %3, align 8
  %150 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %149, i32 0, i32 1
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %155 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  store i32 %153, i32* %156, align 4
  %157 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %3, align 8
  %158 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %157, i32 0, i32 0
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %163 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  store i32 %161, i32* %164, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
