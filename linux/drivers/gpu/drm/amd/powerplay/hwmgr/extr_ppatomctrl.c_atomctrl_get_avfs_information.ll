; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppatomctrl.c_atomctrl_get_avfs_information.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_ppatomctrl.c_atomctrl_get_avfs_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.pp_atom_ctrl__avfs_parameters = type { i32, i8*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@ASIC_ProfilingInfo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atomctrl_get_avfs_information(%struct.pp_hwmgr* %0, %struct.pp_atom_ctrl__avfs_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.pp_atom_ctrl__avfs_parameters*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store %struct.pp_atom_ctrl__avfs_parameters* %1, %struct.pp_atom_ctrl__avfs_parameters** %5, align 8
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %6, align 8
  %7 = load %struct.pp_atom_ctrl__avfs_parameters*, %struct.pp_atom_ctrl__avfs_parameters** %5, align 8
  %8 = icmp eq %struct.pp_atom_ctrl__avfs_parameters* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %170

12:                                               ; preds = %2
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DATA, align 4
  %17 = load i32, i32* @ASIC_ProfilingInfo, align 4
  %18 = call i32 @GetIndexIntoMasterTable(i32 %16, i32 %17)
  %19 = call i64 @smu_atom_get_data_table(i32 %15, i32 %18, i32* null, i32* null, i32* null)
  %20 = inttoptr i64 %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %6, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %170

24:                                               ; preds = %12
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 24
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @le32_to_cpu(i32 %27)
  %29 = load %struct.pp_atom_ctrl__avfs_parameters*, %struct.pp_atom_ctrl__avfs_parameters** %5, align 8
  %30 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %29, i32 0, i32 24
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 23
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @le32_to_cpu(i32 %33)
  %35 = load %struct.pp_atom_ctrl__avfs_parameters*, %struct.pp_atom_ctrl__avfs_parameters** %5, align 8
  %36 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %35, i32 0, i32 23
  store i8* %34, i8** %36, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 22
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @le32_to_cpu(i32 %39)
  %41 = load %struct.pp_atom_ctrl__avfs_parameters*, %struct.pp_atom_ctrl__avfs_parameters** %5, align 8
  %42 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %41, i32 0, i32 22
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 21
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @le16_to_cpu(i32 %45)
  %47 = load %struct.pp_atom_ctrl__avfs_parameters*, %struct.pp_atom_ctrl__avfs_parameters** %5, align 8
  %48 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %47, i32 0, i32 21
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 20
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @le16_to_cpu(i32 %51)
  %53 = load %struct.pp_atom_ctrl__avfs_parameters*, %struct.pp_atom_ctrl__avfs_parameters** %5, align 8
  %54 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %53, i32 0, i32 20
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 19
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @le16_to_cpu(i32 %57)
  %59 = load %struct.pp_atom_ctrl__avfs_parameters*, %struct.pp_atom_ctrl__avfs_parameters** %5, align 8
  %60 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %59, i32 0, i32 19
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 18
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @le32_to_cpu(i32 %63)
  %65 = load %struct.pp_atom_ctrl__avfs_parameters*, %struct.pp_atom_ctrl__avfs_parameters** %5, align 8
  %66 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %65, i32 0, i32 18
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 17
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @le32_to_cpu(i32 %69)
  %71 = load %struct.pp_atom_ctrl__avfs_parameters*, %struct.pp_atom_ctrl__avfs_parameters** %5, align 8
  %72 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %71, i32 0, i32 17
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 16
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @le32_to_cpu(i32 %75)
  %77 = load %struct.pp_atom_ctrl__avfs_parameters*, %struct.pp_atom_ctrl__avfs_parameters** %5, align 8
  %78 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %77, i32 0, i32 16
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 15
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @le32_to_cpu(i32 %81)
  %83 = load %struct.pp_atom_ctrl__avfs_parameters*, %struct.pp_atom_ctrl__avfs_parameters** %5, align 8
  %84 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %83, i32 0, i32 15
  store i8* %82, i8** %84, align 8
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 14
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @le32_to_cpu(i32 %87)
  %89 = load %struct.pp_atom_ctrl__avfs_parameters*, %struct.pp_atom_ctrl__avfs_parameters** %5, align 8
  %90 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %89, i32 0, i32 14
  store i8* %88, i8** %90, align 8
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 13
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @le32_to_cpu(i32 %93)
  %95 = load %struct.pp_atom_ctrl__avfs_parameters*, %struct.pp_atom_ctrl__avfs_parameters** %5, align 8
  %96 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %95, i32 0, i32 13
  store i8* %94, i8** %96, align 8
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 12
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @le32_to_cpu(i32 %99)
  %101 = load %struct.pp_atom_ctrl__avfs_parameters*, %struct.pp_atom_ctrl__avfs_parameters** %5, align 8
  %102 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %101, i32 0, i32 12
  store i8* %100, i8** %102, align 8
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 11
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @le16_to_cpu(i32 %105)
  %107 = load %struct.pp_atom_ctrl__avfs_parameters*, %struct.pp_atom_ctrl__avfs_parameters** %5, align 8
  %108 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %107, i32 0, i32 11
  store i8* %106, i8** %108, align 8
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 10
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @le32_to_cpu(i32 %111)
  %113 = load %struct.pp_atom_ctrl__avfs_parameters*, %struct.pp_atom_ctrl__avfs_parameters** %5, align 8
  %114 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %113, i32 0, i32 10
  store i8* %112, i8** %114, align 8
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 9
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @le32_to_cpu(i32 %117)
  %119 = load %struct.pp_atom_ctrl__avfs_parameters*, %struct.pp_atom_ctrl__avfs_parameters** %5, align 8
  %120 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %119, i32 0, i32 9
  store i8* %118, i8** %120, align 8
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @le16_to_cpu(i32 %123)
  %125 = load %struct.pp_atom_ctrl__avfs_parameters*, %struct.pp_atom_ctrl__avfs_parameters** %5, align 8
  %126 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %125, i32 0, i32 8
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @le32_to_cpu(i32 %129)
  %131 = load %struct.pp_atom_ctrl__avfs_parameters*, %struct.pp_atom_ctrl__avfs_parameters** %5, align 8
  %132 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %131, i32 0, i32 7
  store i8* %130, i8** %132, align 8
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @le16_to_cpu(i32 %135)
  %137 = load %struct.pp_atom_ctrl__avfs_parameters*, %struct.pp_atom_ctrl__avfs_parameters** %5, align 8
  %138 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %137, i32 0, i32 6
  store i8* %136, i8** %138, align 8
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.pp_atom_ctrl__avfs_parameters*, %struct.pp_atom_ctrl__avfs_parameters** %5, align 8
  %143 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %142, i32 0, i32 5
  store i32 %141, i32* %143, align 4
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.pp_atom_ctrl__avfs_parameters*, %struct.pp_atom_ctrl__avfs_parameters** %5, align 8
  %148 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.pp_atom_ctrl__avfs_parameters*, %struct.pp_atom_ctrl__avfs_parameters** %5, align 8
  %153 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 4
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.pp_atom_ctrl__avfs_parameters*, %struct.pp_atom_ctrl__avfs_parameters** %5, align 8
  %158 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i8* @le16_to_cpu(i32 %161)
  %163 = load %struct.pp_atom_ctrl__avfs_parameters*, %struct.pp_atom_ctrl__avfs_parameters** %5, align 8
  %164 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %163, i32 0, i32 1
  store i8* %162, i8** %164, align 8
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.pp_atom_ctrl__avfs_parameters*, %struct.pp_atom_ctrl__avfs_parameters** %5, align 8
  %169 = getelementptr inbounds %struct.pp_atom_ctrl__avfs_parameters, %struct.pp_atom_ctrl__avfs_parameters* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %24, %23, %9
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i64 @smu_atom_get_data_table(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
