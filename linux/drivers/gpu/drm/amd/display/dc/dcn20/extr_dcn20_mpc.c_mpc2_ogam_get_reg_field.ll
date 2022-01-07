; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_mpc2_ogam_get_reg_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_mpc2_ogam_get_reg_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc = type { i32 }
%struct.xfer_func_reg = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dcn20_mpc = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpc*, %struct.xfer_func_reg*)* @mpc2_ogam_get_reg_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc2_ogam_get_reg_field(%struct.mpc* %0, %struct.xfer_func_reg* %1) #0 {
  %3 = alloca %struct.mpc*, align 8
  %4 = alloca %struct.xfer_func_reg*, align 8
  %5 = alloca %struct.dcn20_mpc*, align 8
  store %struct.mpc* %0, %struct.mpc** %3, align 8
  store %struct.xfer_func_reg* %1, %struct.xfer_func_reg** %4, align 8
  %6 = load %struct.mpc*, %struct.mpc** %3, align 8
  %7 = call %struct.dcn20_mpc* @TO_DCN20_MPC(%struct.mpc* %6)
  store %struct.dcn20_mpc* %7, %struct.dcn20_mpc** %5, align 8
  %8 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %5, align 8
  %9 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %14 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 9
  store i32 %12, i32* %15, align 4
  %16 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %5, align 8
  %17 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %22 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 9
  store i32 %20, i32* %23, align 4
  %24 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %5, align 8
  %25 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %30 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 8
  store i32 %28, i32* %31, align 4
  %32 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %5, align 8
  %33 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %38 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 8
  store i32 %36, i32* %39, align 4
  %40 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %5, align 8
  %41 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %46 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 7
  store i32 %44, i32* %47, align 4
  %48 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %5, align 8
  %49 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %54 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 7
  store i32 %52, i32* %55, align 4
  %56 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %5, align 8
  %57 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %62 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 6
  store i32 %60, i32* %63, align 4
  %64 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %5, align 8
  %65 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %70 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 6
  store i32 %68, i32* %71, align 4
  %72 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %5, align 8
  %73 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %78 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 5
  store i32 %76, i32* %79, align 4
  %80 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %5, align 8
  %81 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %86 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 5
  store i32 %84, i32* %87, align 4
  %88 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %5, align 8
  %89 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %94 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 4
  store i32 %92, i32* %95, align 4
  %96 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %5, align 8
  %97 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %96, i32 0, i32 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %102 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 4
  store i32 %100, i32* %103, align 4
  %104 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %5, align 8
  %105 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %110 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 3
  store i32 %108, i32* %111, align 4
  %112 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %5, align 8
  %113 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %112, i32 0, i32 0
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %118 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 3
  store i32 %116, i32* %119, align 4
  %120 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %5, align 8
  %121 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %120, i32 0, i32 1
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %126 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  store i32 %124, i32* %127, align 4
  %128 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %5, align 8
  %129 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %128, i32 0, i32 0
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %134 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  store i32 %132, i32* %135, align 4
  %136 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %5, align 8
  %137 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %136, i32 0, i32 1
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %142 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  store i32 %140, i32* %143, align 4
  %144 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %5, align 8
  %145 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %144, i32 0, i32 0
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %150 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  store i32 %148, i32* %151, align 4
  %152 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %5, align 8
  %153 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %152, i32 0, i32 1
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %158 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  store i32 %156, i32* %159, align 4
  %160 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %5, align 8
  %161 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %160, i32 0, i32 0
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.xfer_func_reg*, %struct.xfer_func_reg** %4, align 8
  %166 = getelementptr inbounds %struct.xfer_func_reg, %struct.xfer_func_reg* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  store i32 %164, i32* %167, align 4
  ret void
}

declare dso_local %struct.dcn20_mpc* @TO_DCN20_MPC(%struct.mpc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
