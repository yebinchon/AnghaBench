; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_get_bb_meta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_get_bb_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_dev = type { %struct.TYPE_4__*, %struct.nvm_geo }
%struct.TYPE_4__ = type { i32 (%struct.nvm_dev*, %struct.ppa_addr*, i32*)* }
%struct.ppa_addr = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.nvm_geo = type { i32, i32, i32, i32 }
%struct.nvm_chk_meta = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvm_dev*, i64, i32, %struct.nvm_chk_meta*)* @nvm_get_bb_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvm_get_bb_meta(%struct.nvm_dev* %0, i64 %1, i32 %2, %struct.nvm_chk_meta* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvm_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvm_chk_meta*, align 8
  %10 = alloca %struct.nvm_geo*, align 8
  %11 = alloca %struct.ppa_addr, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ppa_addr, align 8
  %18 = alloca %struct.ppa_addr, align 8
  %19 = alloca %struct.ppa_addr, align 8
  %20 = alloca %struct.ppa_addr, align 8
  store %struct.nvm_dev* %0, %struct.nvm_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nvm_chk_meta* %3, %struct.nvm_chk_meta** %9, align 8
  %21 = load %struct.nvm_dev*, %struct.nvm_dev** %6, align 8
  %22 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %21, i32 0, i32 1
  store %struct.nvm_geo* %22, %struct.nvm_geo** %10, align 8
  store i32 0, i32* %16, align 4
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %11, i32 0, i32 1
  store i64 %23, i64* %24, align 8
  %25 = load %struct.nvm_dev*, %struct.nvm_dev** %6, align 8
  call void @dev_to_generic_addr(%struct.ppa_addr* sret %17, %struct.nvm_dev* %25, %struct.ppa_addr* byval(%struct.ppa_addr) align 8 %11)
  %26 = bitcast %struct.ppa_addr* %11 to i8*
  %27 = bitcast %struct.ppa_addr* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 24, i1 false)
  %28 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %11, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %140

35:                                               ; preds = %4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.nvm_geo*, %struct.nvm_geo** %10, align 8
  %38 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = srem i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %140

45:                                               ; preds = %35
  %46 = load %struct.nvm_geo*, %struct.nvm_geo** %10, align 8
  %47 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nvm_geo*, %struct.nvm_geo** %10, align 8
  %50 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %48, %51
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i32* @kmalloc(i32 %53, i32 %54)
  store i32* %55, i32** %12, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %45
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %140

61:                                               ; preds = %45
  %62 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %11, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %132, %61
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.nvm_geo*, %struct.nvm_geo** %10, align 8
  %68 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %135

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %11, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %128, %71
  %76 = load i32, i32* %14, align 4
  %77 = load %struct.nvm_geo*, %struct.nvm_geo** %10, align 8
  %78 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %131

81:                                               ; preds = %75
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  br label %136

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %18, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load i32, i32* %13, align 4
  %88 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %18, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %14, align 4
  %91 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %18, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  %93 = load %struct.nvm_dev*, %struct.nvm_dev** %6, align 8
  call void @generic_to_dev_addr(%struct.ppa_addr* sret %20, %struct.nvm_dev* %93, %struct.ppa_addr* byval(%struct.ppa_addr) align 8 %18)
  %94 = bitcast %struct.ppa_addr* %19 to i8*
  %95 = bitcast %struct.ppa_addr* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 8 %95, i64 24, i1 false)
  %96 = load %struct.nvm_dev*, %struct.nvm_dev** %6, align 8
  %97 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32 (%struct.nvm_dev*, %struct.ppa_addr*, i32*)*, i32 (%struct.nvm_dev*, %struct.ppa_addr*, i32*)** %99, align 8
  %101 = load %struct.nvm_dev*, %struct.nvm_dev** %6, align 8
  %102 = load i32*, i32** %12, align 8
  %103 = call i32 %100(%struct.nvm_dev* %101, %struct.ppa_addr* byval(%struct.ppa_addr) align 8 %19, i32* %102)
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %16, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %85
  br label %136

107:                                              ; preds = %85
  %108 = load %struct.nvm_dev*, %struct.nvm_dev** %6, align 8
  %109 = load i32*, i32** %12, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %9, align 8
  %112 = call i32 @nvm_bb_to_chunk(%struct.nvm_dev* %108, %struct.ppa_addr* byval(%struct.ppa_addr) align 8 %18, i32* %109, i32 %110, %struct.nvm_chk_meta* %111)
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %136

116:                                              ; preds = %107
  %117 = load %struct.nvm_geo*, %struct.nvm_geo** %10, align 8
  %118 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %9, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %120, i64 %121
  store %struct.nvm_chk_meta* %122, %struct.nvm_chk_meta** %9, align 8
  %123 = load %struct.nvm_geo*, %struct.nvm_geo** %10, align 8
  %124 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %8, align 4
  %127 = sub nsw i32 %126, %125
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %116
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %14, align 4
  br label %75

131:                                              ; preds = %75
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %13, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %13, align 4
  br label %65

135:                                              ; preds = %65
  br label %136

136:                                              ; preds = %135, %115, %106, %84
  %137 = load i32*, i32** %12, align 8
  %138 = call i32 @kfree(i32* %137)
  %139 = load i32, i32* %16, align 4
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %136, %58, %42, %32
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local void @dev_to_generic_addr(%struct.ppa_addr* sret, %struct.nvm_dev*, %struct.ppa_addr* byval(%struct.ppa_addr) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local void @generic_to_dev_addr(%struct.ppa_addr* sret, %struct.nvm_dev*, %struct.ppa_addr* byval(%struct.ppa_addr) align 8) #1

declare dso_local i32 @nvm_bb_to_chunk(%struct.nvm_dev*, %struct.ppa_addr* byval(%struct.ppa_addr) align 8, i32*, i32, %struct.nvm_chk_meta*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
