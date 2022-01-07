; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i7core_edac.c_decode_dclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i7core_edac.c_decode_dclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmi_header = type { i64 }
%struct.memdev_dmi_entry = type { i64, i64, i64, i64, i32 }

@DMI_ENTRY_MEM_DEVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmi_header*, i8*)* @decode_dclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_dclk(%struct.dmi_header* %0, i8* %1) #0 {
  %3 = alloca %struct.dmi_header*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.memdev_dmi_entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.dmi_header* %0, %struct.dmi_header** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %95

16:                                               ; preds = %2
  %17 = load %struct.dmi_header*, %struct.dmi_header** %3, align 8
  %18 = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DMI_ENTRY_MEM_DEVICE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %95

22:                                               ; preds = %16
  %23 = load %struct.dmi_header*, %struct.dmi_header** %3, align 8
  %24 = bitcast %struct.dmi_header* %23 to %struct.memdev_dmi_entry*
  store %struct.memdev_dmi_entry* %24, %struct.memdev_dmi_entry** %7, align 8
  %25 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %26 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %25, i32 0, i32 0
  %27 = ptrtoint i64* %26 to i64
  %28 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %29 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %28, i32 0, i32 4
  %30 = ptrtoint i32* %29 to i64
  %31 = sub i64 %27, %30
  store i64 %31, i64* %8, align 8
  %32 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %33 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %32, i32 0, i32 1
  %34 = ptrtoint i64* %33 to i64
  %35 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %36 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %35, i32 0, i32 4
  %37 = ptrtoint i32* %36 to i64
  %38 = sub i64 %34, %37
  store i64 %38, i64* %9, align 8
  %39 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %40 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %22
  br label %95

44:                                               ; preds = %22
  %45 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %46 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %52 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %6, align 8
  br label %67

54:                                               ; preds = %44
  %55 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %56 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %62 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %6, align 8
  br label %66

64:                                               ; preds = %54
  %65 = load i32*, i32** %5, align 8
  store i32 -1, i32* %65, align 4
  br label %95

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %50
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load i64, i64* %6, align 8
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i64, i64* %6, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i32*, i32** %5, align 8
  store i32 %76, i32* %77, align 4
  br label %80

78:                                               ; preds = %71
  %79 = load i32*, i32** %5, align 8
  store i32 -1, i32* %79, align 4
  br label %80

80:                                               ; preds = %78, %74
  br label %94

81:                                               ; preds = %67
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %6, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32*, i32** %5, align 8
  store i32 -1, i32* %92, align 4
  br label %93

93:                                               ; preds = %91, %85, %81
  br label %94

94:                                               ; preds = %93, %80
  br label %95

95:                                               ; preds = %15, %43, %64, %94, %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
