; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_wr_uimage_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_wr_uimage_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_fw_loader_handle = type { %struct.TYPE_5__*, %struct.icp_qat_uclo_objhandle* }
%struct.TYPE_5__ = type { i8 }
%struct.icp_qat_uclo_objhandle = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.icp_qat_uclo_page**, %struct.icp_qat_uclo_page* }
%struct.icp_qat_uclo_page = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.icp_qat_uof_image = type { i32, i32, i32, i32 }

@ICP_QAT_UCLO_MAX_CTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icp_qat_fw_loader_handle*, %struct.icp_qat_uof_image*)* @qat_uclo_wr_uimage_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qat_uclo_wr_uimage_page(%struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_uof_image* %1) #0 {
  %3 = alloca %struct.icp_qat_fw_loader_handle*, align 8
  %4 = alloca %struct.icp_qat_uof_image*, align 8
  %5 = alloca %struct.icp_qat_uclo_objhandle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.icp_qat_uclo_page*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.icp_qat_fw_loader_handle* %0, %struct.icp_qat_fw_loader_handle** %3, align 8
  store %struct.icp_qat_uof_image* %1, %struct.icp_qat_uof_image** %4, align 8
  %11 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %12 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %11, i32 0, i32 1
  %13 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %12, align 8
  store %struct.icp_qat_uclo_objhandle* %13, %struct.icp_qat_uclo_objhandle** %5, align 8
  %14 = load %struct.icp_qat_uof_image*, %struct.icp_qat_uof_image** %4, align 8
  %15 = getelementptr inbounds %struct.icp_qat_uof_image, %struct.icp_qat_uof_image* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ICP_QAT_CTX_MODE(i32 %16)
  %18 = load i32, i32* @ICP_QAT_UCLO_MAX_CTX, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 255, i32* %6, align 4
  br label %22

21:                                               ; preds = %2
  store i32 85, i32* %6, align 4
  br label %22

22:                                               ; preds = %21, %20
  store i8 0, i8* %9, align 1
  br label %23

23:                                               ; preds = %180, %22
  %24 = load i8, i8* %9, align 1
  %25 = zext i8 %24 to i32
  %26 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %27 = getelementptr inbounds %struct.icp_qat_fw_loader_handle, %struct.icp_qat_fw_loader_handle* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp slt i32 %25, %31
  br i1 %32, label %33, label %183

33:                                               ; preds = %23
  %34 = load i8, i8* %9, align 1
  %35 = load %struct.icp_qat_uof_image*, %struct.icp_qat_uof_image** %4, align 8
  %36 = getelementptr inbounds %struct.icp_qat_uof_image, %struct.icp_qat_uof_image* %35, i32 0, i32 2
  %37 = bitcast i32* %36 to i64*
  %38 = call i32 @test_bit(i8 zeroext %34, i64* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %180

41:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %74, %41
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %5, align 8
  %45 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load i8, i8* %9, align 1
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ult i32 %43, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %42
  %54 = load %struct.icp_qat_uof_image*, %struct.icp_qat_uof_image** %4, align 8
  %55 = getelementptr inbounds %struct.icp_qat_uof_image, %struct.icp_qat_uof_image* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %5, align 8
  %58 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = load i8, i8* %9, align 1
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %56, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %53
  br label %77

73:                                               ; preds = %53
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %42

77:                                               ; preds = %72, %42
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %5, align 8
  %80 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = load i8, i8* %9, align 1
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp uge i32 %78, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  br label %180

89:                                               ; preds = %77
  %90 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %5, align 8
  %91 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %90, i32 0, i32 0
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = load i8, i8* %9, align 1
  %94 = zext i8 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = load %struct.icp_qat_uclo_page*, %struct.icp_qat_uclo_page** %101, align 8
  store %struct.icp_qat_uclo_page* %102, %struct.icp_qat_uclo_page** %8, align 8
  %103 = load %struct.icp_qat_uclo_page*, %struct.icp_qat_uclo_page** %8, align 8
  %104 = getelementptr inbounds %struct.icp_qat_uclo_page, %struct.icp_qat_uclo_page* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %89
  br label %180

110:                                              ; preds = %89
  %111 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %112 = load %struct.icp_qat_uclo_page*, %struct.icp_qat_uclo_page** %8, align 8
  %113 = getelementptr inbounds %struct.icp_qat_uclo_page, %struct.icp_qat_uclo_page* %112, i32 0, i32 0
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = load i8, i8* %9, align 1
  %116 = call i32 @qat_uclo_wr_uimage_raw_page(%struct.icp_qat_fw_loader_handle* %111, %struct.TYPE_8__* %114, i8 zeroext %115)
  %117 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %5, align 8
  %118 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %117, i32 0, i32 0
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = load i8, i8* %9, align 1
  %121 = zext i8 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = load %struct.icp_qat_uclo_page*, %struct.icp_qat_uclo_page** %128, align 8
  store %struct.icp_qat_uclo_page* %129, %struct.icp_qat_uclo_page** %8, align 8
  store i32 0, i32* %10, align 4
  br label %130

130:                                              ; preds = %161, %110
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @ICP_QAT_UCLO_MAX_CTX, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %164

134:                                              ; preds = %130
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %10, align 4
  %137 = shl i32 1, %136
  %138 = and i32 %135, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %134
  %141 = load %struct.icp_qat_uclo_page*, %struct.icp_qat_uclo_page** %8, align 8
  br label %143

142:                                              ; preds = %134
  br label %143

143:                                              ; preds = %142, %140
  %144 = phi %struct.icp_qat_uclo_page* [ %141, %140 ], [ null, %142 ]
  %145 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %5, align 8
  %146 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %145, i32 0, i32 0
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = load i8, i8* %9, align 1
  %149 = zext i8 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = load %struct.icp_qat_uclo_page**, %struct.icp_qat_uclo_page*** %156, align 8
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.icp_qat_uclo_page*, %struct.icp_qat_uclo_page** %157, i64 %159
  store %struct.icp_qat_uclo_page* %144, %struct.icp_qat_uclo_page** %160, align 8
  br label %161

161:                                              ; preds = %143
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %10, align 4
  br label %130

164:                                              ; preds = %130
  %165 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %166 = load i8, i8* %9, align 1
  %167 = load %struct.icp_qat_uof_image*, %struct.icp_qat_uof_image** %4, align 8
  %168 = getelementptr inbounds %struct.icp_qat_uof_image, %struct.icp_qat_uof_image* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @qat_hal_set_live_ctx(%struct.icp_qat_fw_loader_handle* %165, i8 zeroext %166, i32 %169)
  %171 = load %struct.icp_qat_fw_loader_handle*, %struct.icp_qat_fw_loader_handle** %3, align 8
  %172 = load i8, i8* %9, align 1
  %173 = load %struct.icp_qat_uof_image*, %struct.icp_qat_uof_image** %4, align 8
  %174 = getelementptr inbounds %struct.icp_qat_uof_image, %struct.icp_qat_uof_image* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.icp_qat_uof_image*, %struct.icp_qat_uof_image** %4, align 8
  %177 = getelementptr inbounds %struct.icp_qat_uof_image, %struct.icp_qat_uof_image* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @qat_hal_set_pc(%struct.icp_qat_fw_loader_handle* %171, i8 zeroext %172, i32 %175, i32 %178)
  br label %180

180:                                              ; preds = %164, %109, %88, %40
  %181 = load i8, i8* %9, align 1
  %182 = add i8 %181, 1
  store i8 %182, i8* %9, align 1
  br label %23

183:                                              ; preds = %23
  ret void
}

declare dso_local i32 @ICP_QAT_CTX_MODE(i32) #1

declare dso_local i32 @test_bit(i8 zeroext, i64*) #1

declare dso_local i32 @qat_uclo_wr_uimage_raw_page(%struct.icp_qat_fw_loader_handle*, %struct.TYPE_8__*, i8 zeroext) #1

declare dso_local i32 @qat_hal_set_live_ctx(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32) #1

declare dso_local i32 @qat_hal_set_pc(%struct.icp_qat_fw_loader_handle*, i8 zeroext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
