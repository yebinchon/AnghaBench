; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_bb_chunk_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_bb_chunk_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32, i32, i64, i32 }
%struct.nvm_chk_meta = type { i32, i8* }
%struct.ppa_addr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@NVM_CHK_ST_OPEN = common dso_local global i8* null, align 8
@NVM_CHK_ST_FREE = common dso_local global i8* null, align 8
@NVM_CHK_ST_CLOSED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvm_dev*, i64, %struct.nvm_chk_meta*)* @nvm_bb_chunk_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvm_bb_chunk_scan(%struct.nvm_dev* %0, i64 %1, %struct.nvm_chk_meta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ppa_addr, align 4
  %6 = alloca %struct.nvm_dev*, align 8
  %7 = alloca %struct.nvm_chk_meta*, align 8
  %8 = alloca %struct.nvm_geo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %5, i32 0, i32 0
  %13 = bitcast %struct.TYPE_2__* %12 to i64*
  store i64 %1, i64* %13, align 4
  store %struct.nvm_dev* %0, %struct.nvm_dev** %6, align 8
  store %struct.nvm_chk_meta* %2, %struct.nvm_chk_meta** %7, align 8
  %14 = load %struct.nvm_dev*, %struct.nvm_dev** %6, align 8
  %15 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %14, i32 0, i32 0
  store %struct.nvm_geo* %15, %struct.nvm_geo** %8, align 8
  %16 = load %struct.nvm_dev*, %struct.nvm_dev** %6, align 8
  %17 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %5, i32 0, i32 0
  %18 = bitcast %struct.TYPE_2__* %17 to i64*
  %19 = load i64, i64* %18, align 4
  %20 = call i32 @nvm_bb_chunk_sense(%struct.nvm_dev* %16, i64 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %174

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i8*, i8** @NVM_CHK_ST_OPEN, align 8
  %30 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %7, align 8
  %31 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  br label %49

32:                                               ; preds = %25
  %33 = load i32, i32* %9, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  switch i32 %36, label %45 [
    i32 131, label %37
    i32 130, label %41
    i32 129, label %41
    i32 128, label %41
  ]

37:                                               ; preds = %35
  %38 = load i8*, i8** @NVM_CHK_ST_FREE, align 8
  %39 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %7, align 8
  %40 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  store i32 0, i32* %4, align 4
  br label %174

41:                                               ; preds = %35, %35, %35
  %42 = load i8*, i8** @NVM_CHK_ST_OPEN, align 8
  %43 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %7, align 8
  %44 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  br label %100

45:                                               ; preds = %35
  %46 = load i32, i32* %9, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %174

48:                                               ; preds = %32
  br label %49

49:                                               ; preds = %48, %28
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.nvm_geo*, %struct.nvm_geo** %8, align 8
  %52 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 1
  %55 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %5, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.nvm_geo*, %struct.nvm_geo** %8, align 8
  %58 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, 1
  %61 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %5, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.nvm_dev*, %struct.nvm_dev** %6, align 8
  %64 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %5, i32 0, i32 0
  %65 = bitcast %struct.TYPE_2__* %64 to i64*
  %66 = load i64, i64* %65, align 4
  %67 = call i32 @nvm_bb_chunk_sense(%struct.nvm_dev* %63, i64 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %50
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %4, align 4
  br label %174

72:                                               ; preds = %50
  %73 = load i32, i32* %9, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i8*, i8** @NVM_CHK_ST_CLOSED, align 8
  %77 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %7, align 8
  %78 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.nvm_geo*, %struct.nvm_geo** %8, align 8
  %80 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %7, align 8
  %83 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  store i32 0, i32* %4, align 4
  br label %174

84:                                               ; preds = %72
  %85 = load i32, i32* %9, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load i32, i32* %9, align 4
  switch i32 %88, label %93 [
    i32 131, label %89
    i32 130, label %89
    i32 129, label %89
    i32 128, label %89
  ]

89:                                               ; preds = %87, %87, %87, %87
  %90 = load i8*, i8** @NVM_CHK_ST_OPEN, align 8
  %91 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %7, align 8
  %92 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  br label %96

93:                                               ; preds = %87
  %94 = load i32, i32* %9, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %174

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %84
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99, %41
  store i32 0, i32* %10, align 4
  br label %101

101:                                              ; preds = %170, %100
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.nvm_geo*, %struct.nvm_geo** %8, align 8
  %104 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %173

107:                                              ; preds = %101
  store i32 0, i32* %11, align 4
  br label %108

108:                                              ; preds = %166, %107
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.nvm_geo*, %struct.nvm_geo** %8, align 8
  %111 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %169

114:                                              ; preds = %108
  %115 = load i32, i32* %10, align 4
  %116 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %5, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %11, align 4
  %119 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %5, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.nvm_dev*, %struct.nvm_dev** %6, align 8
  %122 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %5, i32 0, i32 0
  %123 = bitcast %struct.TYPE_2__* %122 to i64*
  %124 = load i64, i64* %123, align 4
  %125 = call i32 @nvm_bb_chunk_sense(%struct.nvm_dev* %121, i64 %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %114
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %4, align 4
  br label %174

130:                                              ; preds = %114
  %131 = load i32, i32* %9, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %130
  %134 = load %struct.nvm_geo*, %struct.nvm_geo** %8, align 8
  %135 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %7, align 8
  %138 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %136
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %138, align 8
  br label %164

143:                                              ; preds = %130
  %144 = load i32, i32* %9, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %163

146:                                              ; preds = %143
  %147 = load i32, i32* %9, align 4
  switch i32 %147, label %159 [
    i32 131, label %148
    i32 130, label %149
    i32 129, label %149
    i32 128, label %149
  ]

148:                                              ; preds = %146
  store i32 0, i32* %4, align 4
  br label %174

149:                                              ; preds = %146, %146, %146
  %150 = load %struct.nvm_geo*, %struct.nvm_geo** %8, align 8
  %151 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %7, align 8
  %154 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %156, %152
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %154, align 8
  br label %162

159:                                              ; preds = %146
  %160 = load i32, i32* %9, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %4, align 4
  br label %174

162:                                              ; preds = %149
  br label %163

163:                                              ; preds = %162, %143
  br label %164

164:                                              ; preds = %163, %133
  br label %165

165:                                              ; preds = %164
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %11, align 4
  br label %108

169:                                              ; preds = %108
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %10, align 4
  br label %101

173:                                              ; preds = %101
  store i32 0, i32* %4, align 4
  br label %174

174:                                              ; preds = %173, %159, %148, %128, %93, %75, %70, %45, %37, %23
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i32 @nvm_bb_chunk_sense(%struct.nvm_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
