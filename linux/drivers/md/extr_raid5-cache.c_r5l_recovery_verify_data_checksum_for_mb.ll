; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_recovery_verify_data_checksum_for_mb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_recovery_verify_data_checksum_for_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_log = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mddev* }
%struct.mddev = type { %struct.r5conf* }
%struct.r5conf = type { i32 }
%struct.r5l_recovery_ctx = type { i32, i32 }
%struct.r5l_meta_block = type { i32 }
%struct.page = type { i32 }
%struct.r5l_payload_data_parity = type { i32, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.r5l_payload_flush = type { i32 }

@BLOCK_SECTORS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@R5LOG_PAYLOAD_DATA = common dso_local global i64 0, align 8
@R5LOG_PAYLOAD_PARITY = common dso_local global i64 0, align 8
@R5LOG_PAYLOAD_FLUSH = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r5l_log*, %struct.r5l_recovery_ctx*)* @r5l_recovery_verify_data_checksum_for_mb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r5l_recovery_verify_data_checksum_for_mb(%struct.r5l_log* %0, %struct.r5l_recovery_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r5l_log*, align 8
  %5 = alloca %struct.r5l_recovery_ctx*, align 8
  %6 = alloca %struct.mddev*, align 8
  %7 = alloca %struct.r5conf*, align 8
  %8 = alloca %struct.r5l_meta_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca %struct.r5l_payload_data_parity*, align 8
  %13 = alloca %struct.r5l_payload_flush*, align 8
  store %struct.r5l_log* %0, %struct.r5l_log** %4, align 8
  store %struct.r5l_recovery_ctx* %1, %struct.r5l_recovery_ctx** %5, align 8
  %14 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %15 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.mddev*, %struct.mddev** %17, align 8
  store %struct.mddev* %18, %struct.mddev** %6, align 8
  %19 = load %struct.mddev*, %struct.mddev** %6, align 8
  %20 = getelementptr inbounds %struct.mddev, %struct.mddev* %19, i32 0, i32 0
  %21 = load %struct.r5conf*, %struct.r5conf** %20, align 8
  store %struct.r5conf* %21, %struct.r5conf** %7, align 8
  %22 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %23 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.r5l_meta_block* @page_address(i32 %24)
  store %struct.r5l_meta_block* %25, %struct.r5l_meta_block** %8, align 8
  store i32 4, i32* %9, align 4
  %26 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %27 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BLOCK_SECTORS, align 4
  %31 = call i32 @r5l_ring_add(%struct.r5l_log* %26, i32 %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.page* @alloc_page(i32 %32)
  store %struct.page* %33, %struct.page** %11, align 8
  %34 = load %struct.page*, %struct.page** %11, align 8
  %35 = icmp ne %struct.page* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %2
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %186

39:                                               ; preds = %2
  br label %40

40:                                               ; preds = %177, %39
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %8, align 8
  %43 = getelementptr inbounds %struct.r5l_meta_block, %struct.r5l_meta_block* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le32_to_cpu(i32 %44)
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %178

47:                                               ; preds = %40
  %48 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %8, align 8
  %49 = bitcast %struct.r5l_meta_block* %48 to i8*
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr i8, i8* %49, i64 %51
  %53 = bitcast i8* %52 to %struct.r5l_payload_data_parity*
  store %struct.r5l_payload_data_parity* %53, %struct.r5l_payload_data_parity** %12, align 8
  %54 = load %struct.r5l_meta_block*, %struct.r5l_meta_block** %8, align 8
  %55 = bitcast %struct.r5l_meta_block* %54 to i8*
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr i8, i8* %55, i64 %57
  %59 = bitcast i8* %58 to %struct.r5l_payload_flush*
  store %struct.r5l_payload_flush* %59, %struct.r5l_payload_flush** %13, align 8
  %60 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %12, align 8
  %61 = getelementptr inbounds %struct.r5l_payload_data_parity, %struct.r5l_payload_data_parity* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @le16_to_cpu(i32 %63)
  %65 = load i64, i64* @R5LOG_PAYLOAD_DATA, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %47
  %68 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %69 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %70 = load %struct.page*, %struct.page** %11, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %12, align 8
  %73 = getelementptr inbounds %struct.r5l_payload_data_parity, %struct.r5l_payload_data_parity* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @r5l_recovery_verify_data_checksum(%struct.r5l_log* %68, %struct.r5l_recovery_ctx* %69, %struct.page* %70, i32 %71, i32 %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  br label %181

80:                                               ; preds = %67
  br label %136

81:                                               ; preds = %47
  %82 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %12, align 8
  %83 = getelementptr inbounds %struct.r5l_payload_data_parity, %struct.r5l_payload_data_parity* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @le16_to_cpu(i32 %85)
  %87 = load i64, i64* @R5LOG_PAYLOAD_PARITY, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %124

89:                                               ; preds = %81
  %90 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %91 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %92 = load %struct.page*, %struct.page** %11, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %12, align 8
  %95 = getelementptr inbounds %struct.r5l_payload_data_parity, %struct.r5l_payload_data_parity* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @r5l_recovery_verify_data_checksum(%struct.r5l_log* %90, %struct.r5l_recovery_ctx* %91, %struct.page* %92, i32 %93, i32 %98)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %89
  br label %181

102:                                              ; preds = %89
  %103 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  %104 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %107, label %123

107:                                              ; preds = %102
  %108 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %109 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %110 = load %struct.page*, %struct.page** %11, align 8
  %111 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @BLOCK_SECTORS, align 4
  %114 = call i32 @r5l_ring_add(%struct.r5l_log* %111, i32 %112, i32 %113)
  %115 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %12, align 8
  %116 = getelementptr inbounds %struct.r5l_payload_data_parity, %struct.r5l_payload_data_parity* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @r5l_recovery_verify_data_checksum(%struct.r5l_log* %108, %struct.r5l_recovery_ctx* %109, %struct.page* %110, i32 %114, i32 %119)
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %107
  br label %181

123:                                              ; preds = %107, %102
  br label %135

124:                                              ; preds = %81
  %125 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %12, align 8
  %126 = getelementptr inbounds %struct.r5l_payload_data_parity, %struct.r5l_payload_data_parity* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @le16_to_cpu(i32 %128)
  %130 = load i64, i64* @R5LOG_PAYLOAD_FLUSH, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  br label %134

133:                                              ; preds = %124
  br label %181

134:                                              ; preds = %132
  br label %135

135:                                              ; preds = %134, %123
  br label %136

136:                                              ; preds = %135, %80
  %137 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %12, align 8
  %138 = getelementptr inbounds %struct.r5l_payload_data_parity, %struct.r5l_payload_data_parity* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @le16_to_cpu(i32 %140)
  %142 = load i64, i64* @R5LOG_PAYLOAD_FLUSH, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %155

144:                                              ; preds = %136
  %145 = load %struct.r5l_payload_flush*, %struct.r5l_payload_flush** %13, align 8
  %146 = getelementptr inbounds %struct.r5l_payload_flush, %struct.r5l_payload_flush* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @le32_to_cpu(i32 %147)
  %149 = sext i32 %148 to i64
  %150 = add i64 4, %149
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = add i64 %152, %150
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %9, align 4
  br label %177

155:                                              ; preds = %136
  %156 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %157 = load i32, i32* %10, align 4
  %158 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %12, align 8
  %159 = getelementptr inbounds %struct.r5l_payload_data_parity, %struct.r5l_payload_data_parity* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @le32_to_cpu(i32 %160)
  %162 = call i32 @r5l_ring_add(%struct.r5l_log* %156, i32 %157, i32 %161)
  store i32 %162, i32* %10, align 4
  %163 = load %struct.r5l_payload_data_parity*, %struct.r5l_payload_data_parity** %12, align 8
  %164 = getelementptr inbounds %struct.r5l_payload_data_parity, %struct.r5l_payload_data_parity* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @le32_to_cpu(i32 %165)
  %167 = load i32, i32* @PAGE_SHIFT, align 4
  %168 = sub nsw i32 %167, 9
  %169 = ashr i32 %166, %168
  %170 = sext i32 %169 to i64
  %171 = mul i64 4, %170
  %172 = add i64 16, %171
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = add i64 %174, %172
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %9, align 4
  br label %177

177:                                              ; preds = %155, %144
  br label %40

178:                                              ; preds = %40
  %179 = load %struct.page*, %struct.page** %11, align 8
  %180 = call i32 @put_page(%struct.page* %179)
  store i32 0, i32* %3, align 4
  br label %186

181:                                              ; preds = %133, %122, %101, %79
  %182 = load %struct.page*, %struct.page** %11, align 8
  %183 = call i32 @put_page(%struct.page* %182)
  %184 = load i32, i32* @EINVAL, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %181, %178, %36
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local %struct.r5l_meta_block* @page_address(i32) #1

declare dso_local i32 @r5l_ring_add(%struct.r5l_log*, i32, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @r5l_recovery_verify_data_checksum(%struct.r5l_log*, %struct.r5l_recovery_ctx*, %struct.page*, i32, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
