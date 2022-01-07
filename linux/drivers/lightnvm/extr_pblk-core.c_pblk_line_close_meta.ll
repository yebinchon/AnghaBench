; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_close_meta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_close_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, i32, i32, i32, %struct.pblk_line_meta, %struct.pblk_line_mgmt }
%struct.pblk_line_meta = type { i32, i32 }
%struct.pblk_line_mgmt = type { i32, i32, i32 }
%struct.pblk_line = type { i64, i64, i64, i32, i32, i32, i32, i32, %struct.pblk_emeta* }
%struct.pblk_emeta = type { %struct.line_emeta* }
%struct.line_emeta = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i32, i32, i8*, i32, i8* }
%struct.wa_counters = type { i8*, i8*, i8* }

@PBLK_MAGIC = common dso_local global i64 0, align 8
@EMETA_VERSION_MAJOR = common dso_local global i32 0, align 4
@EMETA_VERSION_MINOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pblk_line_close_meta(%struct.pblk* %0, %struct.pblk_line* %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.pblk_line*, align 8
  %5 = alloca %struct.pblk_line_mgmt*, align 8
  %6 = alloca %struct.pblk_line_meta*, align 8
  %7 = alloca %struct.pblk_emeta*, align 8
  %8 = alloca %struct.line_emeta*, align 8
  %9 = alloca %struct.wa_counters*, align 8
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %4, align 8
  %10 = load %struct.pblk*, %struct.pblk** %3, align 8
  %11 = getelementptr inbounds %struct.pblk, %struct.pblk* %10, i32 0, i32 5
  store %struct.pblk_line_mgmt* %11, %struct.pblk_line_mgmt** %5, align 8
  %12 = load %struct.pblk*, %struct.pblk** %3, align 8
  %13 = getelementptr inbounds %struct.pblk, %struct.pblk* %12, i32 0, i32 4
  store %struct.pblk_line_meta* %13, %struct.pblk_line_meta** %6, align 8
  %14 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %15 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %14, i32 0, i32 8
  %16 = load %struct.pblk_emeta*, %struct.pblk_emeta** %15, align 8
  store %struct.pblk_emeta* %16, %struct.pblk_emeta** %7, align 8
  %17 = load %struct.pblk_emeta*, %struct.pblk_emeta** %7, align 8
  %18 = getelementptr inbounds %struct.pblk_emeta, %struct.pblk_emeta* %17, i32 0, i32 0
  %19 = load %struct.line_emeta*, %struct.line_emeta** %18, align 8
  store %struct.line_emeta* %19, %struct.line_emeta** %8, align 8
  %20 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %21 = load %struct.line_emeta*, %struct.line_emeta** %8, align 8
  %22 = call %struct.wa_counters* @emeta_to_wa(%struct.pblk_line_meta* %20, %struct.line_emeta* %21)
  store %struct.wa_counters* %22, %struct.wa_counters** %9, align 8
  %23 = load %struct.pblk*, %struct.pblk** %3, align 8
  %24 = load %struct.line_emeta*, %struct.line_emeta** %8, align 8
  %25 = call i32 @emeta_to_vsc(%struct.pblk* %23, %struct.line_emeta* %24)
  %26 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %5, align 8
  %27 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %30 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memcpy(i32 %25, i32 %28, i32 %31)
  %33 = load %struct.line_emeta*, %struct.line_emeta** %8, align 8
  %34 = call i32 @emeta_to_bb(%struct.line_emeta* %33)
  %35 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %36 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %6, align 8
  %39 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(i32 %34, i32 %37, i32 %40)
  %42 = load %struct.pblk*, %struct.pblk** %3, align 8
  %43 = getelementptr inbounds %struct.pblk, %struct.pblk* %42, i32 0, i32 3
  %44 = call i32 @atomic64_read(i32* %43)
  %45 = call i8* @cpu_to_le64(i32 %44)
  %46 = load %struct.wa_counters*, %struct.wa_counters** %9, align 8
  %47 = getelementptr inbounds %struct.wa_counters, %struct.wa_counters* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.pblk*, %struct.pblk** %3, align 8
  %49 = getelementptr inbounds %struct.pblk, %struct.pblk* %48, i32 0, i32 2
  %50 = call i32 @atomic64_read(i32* %49)
  %51 = call i8* @cpu_to_le64(i32 %50)
  %52 = load %struct.wa_counters*, %struct.wa_counters** %9, align 8
  %53 = getelementptr inbounds %struct.wa_counters, %struct.wa_counters* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.pblk*, %struct.pblk** %3, align 8
  %55 = getelementptr inbounds %struct.pblk, %struct.pblk* %54, i32 0, i32 1
  %56 = call i32 @atomic64_read(i32* %55)
  %57 = call i8* @cpu_to_le64(i32 %56)
  %58 = load %struct.wa_counters*, %struct.wa_counters** %9, align 8
  %59 = getelementptr inbounds %struct.wa_counters, %struct.wa_counters* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load %struct.line_emeta*, %struct.line_emeta** %8, align 8
  %61 = getelementptr inbounds %struct.line_emeta, %struct.line_emeta* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 6
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @le32_to_cpu(i8* %63)
  %65 = load i64, i64* @PBLK_MAGIC, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %109

67:                                               ; preds = %2
  %68 = load i64, i64* @PBLK_MAGIC, align 8
  %69 = call i8* @cpu_to_le32(i64 %68)
  %70 = load %struct.line_emeta*, %struct.line_emeta** %8, align 8
  %71 = getelementptr inbounds %struct.line_emeta, %struct.line_emeta* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 6
  store i8* %69, i8** %72, align 8
  %73 = load %struct.line_emeta*, %struct.line_emeta** %8, align 8
  %74 = getelementptr inbounds %struct.line_emeta, %struct.line_emeta* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 5
  %76 = load %struct.pblk*, %struct.pblk** %3, align 8
  %77 = getelementptr inbounds %struct.pblk, %struct.pblk* %76, i32 0, i32 0
  %78 = call i32 @guid_copy(i32* %75, i32* %77)
  %79 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %80 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i8* @cpu_to_le32(i64 %81)
  %83 = load %struct.line_emeta*, %struct.line_emeta** %8, align 8
  %84 = getelementptr inbounds %struct.line_emeta, %struct.line_emeta* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 4
  store i8* %82, i8** %85, align 8
  %86 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %87 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @cpu_to_le16(i32 %88)
  %90 = load %struct.line_emeta*, %struct.line_emeta** %8, align 8
  %91 = getelementptr inbounds %struct.line_emeta, %struct.line_emeta* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 3
  store i32 %89, i32* %92, align 8
  %93 = load i32, i32* @EMETA_VERSION_MAJOR, align 4
  %94 = load %struct.line_emeta*, %struct.line_emeta** %8, align 8
  %95 = getelementptr inbounds %struct.line_emeta, %struct.line_emeta* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* @EMETA_VERSION_MINOR, align 4
  %98 = load %struct.line_emeta*, %struct.line_emeta** %8, align 8
  %99 = getelementptr inbounds %struct.line_emeta, %struct.line_emeta* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 8
  %101 = load %struct.pblk*, %struct.pblk** %3, align 8
  %102 = load %struct.line_emeta*, %struct.line_emeta** %8, align 8
  %103 = getelementptr inbounds %struct.line_emeta, %struct.line_emeta* %102, i32 0, i32 2
  %104 = call i64 @pblk_calc_meta_header_crc(%struct.pblk* %101, %struct.TYPE_2__* %103)
  %105 = call i8* @cpu_to_le32(i64 %104)
  %106 = load %struct.line_emeta*, %struct.line_emeta** %8, align 8
  %107 = getelementptr inbounds %struct.line_emeta, %struct.line_emeta* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i8* %105, i8** %108, align 8
  br label %109

109:                                              ; preds = %67, %2
  %110 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %111 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = call i8* @cpu_to_le64(i32 %112)
  %114 = load %struct.line_emeta*, %struct.line_emeta** %8, align 8
  %115 = getelementptr inbounds %struct.line_emeta, %struct.line_emeta* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  %116 = load %struct.pblk*, %struct.pblk** %3, align 8
  %117 = load %struct.line_emeta*, %struct.line_emeta** %8, align 8
  %118 = call i64 @pblk_calc_emeta_crc(%struct.pblk* %116, %struct.line_emeta* %117)
  %119 = call i8* @cpu_to_le32(i64 %118)
  %120 = load %struct.line_emeta*, %struct.line_emeta** %8, align 8
  %121 = getelementptr inbounds %struct.line_emeta, %struct.line_emeta* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  %122 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %5, align 8
  %123 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %122, i32 0, i32 0
  %124 = call i32 @spin_lock(i32* %123)
  %125 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %126 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %125, i32 0, i32 3
  %127 = call i32 @spin_lock(i32* %126)
  %128 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %129 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %132 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %130, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %109
  %136 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %137 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %140 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %135, %109
  %142 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %143 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %142, i32 0, i32 4
  %144 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %5, align 8
  %145 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %144, i32 0, i32 1
  %146 = call i32 @list_add_tail(i32* %143, i32* %145)
  %147 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %148 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %147, i32 0, i32 3
  %149 = call i32 @spin_unlock(i32* %148)
  %150 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %5, align 8
  %151 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %150, i32 0, i32 0
  %152 = call i32 @spin_unlock(i32* %151)
  %153 = load %struct.pblk*, %struct.pblk** %3, align 8
  %154 = call i32 @pblk_line_should_sync_meta(%struct.pblk* %153)
  ret void
}

declare dso_local %struct.wa_counters* @emeta_to_wa(%struct.pblk_line_meta*, %struct.line_emeta*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @emeta_to_vsc(%struct.pblk*, %struct.line_emeta*) #1

declare dso_local i32 @emeta_to_bb(%struct.line_emeta*) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i64 @le32_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @guid_copy(i32*, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @pblk_calc_meta_header_crc(%struct.pblk*, %struct.TYPE_2__*) #1

declare dso_local i64 @pblk_calc_emeta_crc(%struct.pblk*, %struct.line_emeta*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pblk_line_should_sync_meta(%struct.pblk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
