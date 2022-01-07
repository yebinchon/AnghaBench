; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_gop.c_setup_gop32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_gop.c_setup_gop32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_info = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.efi_graphics_output_protocol_32 = type { i32 }
%struct.efi_pixel_bitmask = type { i32 }
%struct.efi_graphics_output_mode_info = type { i32, i32, %struct.efi_pixel_bitmask, i8*, i8* }

@EFI_NOT_FOUND = common dso_local global i32 0, align 4
@EFI_CONSOLE_OUT_DEVICE_GUID = common dso_local global i32 0, align 4
@handle_protocol = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i32 0, align 4
@PIXEL_BLT_ONLY = common dso_local global i32 0, align 4
@VIDEO_TYPE_EFI = common dso_local global i32 0, align 4
@VIDEO_CAPABILITY_64BIT_BASE = common dso_local global i32 0, align 4
@VIDEO_CAPABILITY_SKIP_QUIRKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.screen_info*, i32*, i64, i8**)* @setup_gop32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_gop32(i32* %0, %struct.screen_info* %1, i32* %2, i64 %3, i8** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.screen_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.efi_graphics_output_protocol_32*, align 8
  %12 = alloca %struct.efi_graphics_output_protocol_32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.efi_pixel_bitmask, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.efi_graphics_output_mode_info*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.screen_info* %1, %struct.screen_info** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8** %4, i8*** %10, align 8
  %30 = load i32, i32* @EFI_NOT_FOUND, align 4
  store i32 %30, i32* %21, align 4
  %31 = load i8**, i8*** %10, align 8
  %32 = ptrtoint i8** %31 to i64
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %22, align 8
  store %struct.efi_graphics_output_protocol_32* null, %struct.efi_graphics_output_protocol_32** %12, align 8
  store %struct.efi_graphics_output_protocol_32* null, %struct.efi_graphics_output_protocol_32** %11, align 8
  %34 = load i64, i64* %9, align 8
  %35 = udiv i64 %34, 4
  store i64 %35, i64* %13, align 8
  store i32 0, i32* %23, align 4
  br label %36

36:                                               ; preds = %110, %5
  %37 = load i32, i32* %23, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %13, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %113

41:                                               ; preds = %36
  store %struct.efi_graphics_output_mode_info* null, %struct.efi_graphics_output_mode_info** %24, align 8
  %42 = load i32, i32* @EFI_CONSOLE_OUT_DEVICE_GUID, align 4
  store i32 %42, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i8* null, i8** %27, align 8
  %43 = load i32*, i32** %22, align 8
  %44 = load i32, i32* %23, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %28, align 4
  %50 = load i32, i32* @handle_protocol, align 4
  %51 = load i32, i32* %28, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = bitcast %struct.efi_graphics_output_protocol_32** %11 to i8**
  %54 = call i32 @efi_call_early(i32 %50, i32 %51, i32* %52, i8** %53)
  store i32 %54, i32* %21, align 4
  %55 = load i32, i32* %21, align 4
  %56 = load i32, i32* @EFI_SUCCESS, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %41
  br label %110

59:                                               ; preds = %41
  %60 = load i32, i32* @handle_protocol, align 4
  %61 = load i32, i32* %28, align 4
  %62 = call i32 @efi_call_early(i32 %60, i32 %61, i32* %25, i8** %27)
  store i32 %62, i32* %21, align 4
  %63 = load i32, i32* %21, align 4
  %64 = load i32, i32* @EFI_SUCCESS, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 1, i32* %26, align 4
  br label %67

67:                                               ; preds = %66, %59
  %68 = load i32*, i32** %6, align 8
  %69 = load %struct.efi_graphics_output_protocol_32*, %struct.efi_graphics_output_protocol_32** %11, align 8
  %70 = call i32 @__gop_query32(i32* %68, %struct.efi_graphics_output_protocol_32* %69, %struct.efi_graphics_output_mode_info** %24, i64* %9, i32* %29)
  store i32 %70, i32* %21, align 4
  %71 = load i32, i32* %21, align 4
  %72 = load i32, i32* @EFI_SUCCESS, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %109

74:                                               ; preds = %67
  %75 = load %struct.efi_graphics_output_protocol_32*, %struct.efi_graphics_output_protocol_32** %12, align 8
  %76 = icmp ne %struct.efi_graphics_output_protocol_32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* %26, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %109

80:                                               ; preds = %77, %74
  %81 = load %struct.efi_graphics_output_mode_info*, %struct.efi_graphics_output_mode_info** %24, align 8
  %82 = getelementptr inbounds %struct.efi_graphics_output_mode_info, %struct.efi_graphics_output_mode_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @PIXEL_BLT_ONLY, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %109

86:                                               ; preds = %80
  %87 = load %struct.efi_graphics_output_mode_info*, %struct.efi_graphics_output_mode_info** %24, align 8
  %88 = getelementptr inbounds %struct.efi_graphics_output_mode_info, %struct.efi_graphics_output_mode_info* %87, i32 0, i32 4
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %14, align 8
  %90 = load %struct.efi_graphics_output_mode_info*, %struct.efi_graphics_output_mode_info** %24, align 8
  %91 = getelementptr inbounds %struct.efi_graphics_output_mode_info, %struct.efi_graphics_output_mode_info* %90, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %15, align 8
  %93 = load %struct.efi_graphics_output_mode_info*, %struct.efi_graphics_output_mode_info** %24, align 8
  %94 = getelementptr inbounds %struct.efi_graphics_output_mode_info, %struct.efi_graphics_output_mode_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %20, align 4
  %96 = load %struct.efi_graphics_output_mode_info*, %struct.efi_graphics_output_mode_info** %24, align 8
  %97 = getelementptr inbounds %struct.efi_graphics_output_mode_info, %struct.efi_graphics_output_mode_info* %96, i32 0, i32 2
  %98 = bitcast %struct.efi_pixel_bitmask* %19 to i8*
  %99 = bitcast %struct.efi_pixel_bitmask* %97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %98, i8* align 8 %99, i64 4, i1 false)
  %100 = load %struct.efi_graphics_output_mode_info*, %struct.efi_graphics_output_mode_info** %24, align 8
  %101 = getelementptr inbounds %struct.efi_graphics_output_mode_info, %struct.efi_graphics_output_mode_info* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %16, align 4
  %103 = load i32, i32* %29, align 4
  store i32 %103, i32* %18, align 4
  %104 = load %struct.efi_graphics_output_protocol_32*, %struct.efi_graphics_output_protocol_32** %11, align 8
  store %struct.efi_graphics_output_protocol_32* %104, %struct.efi_graphics_output_protocol_32** %12, align 8
  %105 = load i32, i32* %26, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %86
  br label %113

108:                                              ; preds = %86
  br label %109

109:                                              ; preds = %108, %80, %77, %67
  br label %110

110:                                              ; preds = %109, %58
  %111 = load i32, i32* %23, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %23, align 4
  br label %36

113:                                              ; preds = %107, %36
  %114 = load %struct.efi_graphics_output_protocol_32*, %struct.efi_graphics_output_protocol_32** %12, align 8
  %115 = icmp ne %struct.efi_graphics_output_protocol_32* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  br label %169

117:                                              ; preds = %113
  %118 = load i32, i32* @VIDEO_TYPE_EFI, align 4
  %119 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %120 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %119, i32 0, i32 8
  store i32 %118, i32* %120, align 8
  %121 = load i8*, i8** %14, align 8
  %122 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %123 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %122, i32 0, i32 7
  store i8* %121, i8** %123, align 8
  %124 = load i8*, i8** %15, align 8
  %125 = ptrtoint i8* %124 to i32
  %126 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %127 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* %18, align 4
  %129 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %130 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %18, align 4
  %132 = sext i32 %131 to i64
  %133 = trunc i64 %132 to i32
  %134 = ashr i32 %133, 32
  store i32 %134, i32* %17, align 4
  %135 = load i32, i32* %17, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %117
  %138 = load i32, i32* @VIDEO_CAPABILITY_64BIT_BASE, align 4
  %139 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %140 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load i32, i32* %17, align 4
  %144 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %145 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  br label %146

146:                                              ; preds = %137, %117
  %147 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %148 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %147, i32 0, i32 3
  store i32 1, i32* %148, align 4
  %149 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %150 = load i32, i32* %16, align 4
  %151 = load i32, i32* %20, align 4
  %152 = getelementptr inbounds %struct.efi_pixel_bitmask, %struct.efi_pixel_bitmask* %19, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @setup_pixel_info(%struct.screen_info* %149, i32 %150, i32 %153, i32 %151)
  %155 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %156 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %159 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = mul nsw i32 %157, %160
  %162 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %163 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* @VIDEO_CAPABILITY_SKIP_QUIRKS, align 4
  %165 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %166 = getelementptr inbounds %struct.screen_info, %struct.screen_info* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %146, %116
  %170 = load i32, i32* %21, align 4
  ret i32 %170
}

declare dso_local i32 @efi_call_early(i32, i32, i32*, i8**) #1

declare dso_local i32 @__gop_query32(i32*, %struct.efi_graphics_output_protocol_32*, %struct.efi_graphics_output_mode_info**, i64*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @setup_pixel_info(%struct.screen_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
