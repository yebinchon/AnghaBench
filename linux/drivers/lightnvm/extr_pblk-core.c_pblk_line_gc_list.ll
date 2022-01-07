; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_gc_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_gc_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.pblk = type { i32, i32, i32, %struct.pblk_line_mgmt, %struct.pblk_line_meta }
%struct.pblk_line_mgmt = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.pblk_line_meta = type { i32, i32 }
%struct.pblk_line = type { i64, i32, i32, i32, %struct.TYPE_2__*, i32, i32* }
%struct.TYPE_2__ = type { i64 }

@PBLK_LINEGC_WERR = common dso_local global i64 0, align 8
@PBLK_LINEGC_FULL = common dso_local global i64 0, align 8
@PBLK_LINEGC_HIGH = common dso_local global i64 0, align 8
@PBLK_LINEGC_MID = common dso_local global i64 0, align 8
@PBLK_LINEGC_LOW = common dso_local global i64 0, align 8
@PBLK_LINEGC_EMPTY = common dso_local global i64 0, align 8
@PBLK_LINESTATE_CORRUPT = common dso_local global i32 0, align 4
@PBLK_LINEGC_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"corrupted vsc for line %d, vsc:%d (%d/%d/%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.list_head* @pblk_line_gc_list(%struct.pblk* %0, %struct.pblk_line* %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.pblk_line*, align 8
  %5 = alloca %struct.pblk_line_meta*, align 8
  %6 = alloca %struct.pblk_line_mgmt*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %4, align 8
  %10 = load %struct.pblk*, %struct.pblk** %3, align 8
  %11 = getelementptr inbounds %struct.pblk, %struct.pblk* %10, i32 0, i32 4
  store %struct.pblk_line_meta* %11, %struct.pblk_line_meta** %5, align 8
  %12 = load %struct.pblk*, %struct.pblk** %3, align 8
  %13 = getelementptr inbounds %struct.pblk, %struct.pblk* %12, i32 0, i32 3
  store %struct.pblk_line_mgmt* %13, %struct.pblk_line_mgmt** %6, align 8
  store %struct.list_head* null, %struct.list_head** %7, align 8
  %14 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %15 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %14, i32 0, i32 6
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  %19 = load %struct.pblk*, %struct.pblk** %3, align 8
  %20 = getelementptr inbounds %struct.pblk, %struct.pblk* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %18, %21
  %23 = load %struct.pblk*, %struct.pblk** %3, align 8
  %24 = getelementptr inbounds %struct.pblk, %struct.pblk* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pblk*, %struct.pblk** %3, align 8
  %27 = getelementptr inbounds %struct.pblk, %struct.pblk* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %25, %28
  %30 = mul nsw i32 %22, %29
  store i32 %30, i32* %8, align 4
  %31 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %32 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %31, i32 0, i32 6
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %39 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %38, i32 0, i32 5
  %40 = call i32 @lockdep_assert_held(i32* %39)
  %41 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %42 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %41, i32 0, i32 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %2
  %48 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %49 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PBLK_LINEGC_WERR, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load i64, i64* @PBLK_LINEGC_WERR, align 8
  %55 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %56 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %58 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %57, i32 0, i32 6
  store %struct.list_head* %58, %struct.list_head** %7, align 8
  %59 = load %struct.pblk*, %struct.pblk** %3, align 8
  %60 = getelementptr inbounds %struct.pblk, %struct.pblk* %59, i32 0, i32 2
  %61 = call i32 @pblk_rl_werr_line_in(i32* %60)
  br label %62

62:                                               ; preds = %53, %47
  br label %193

63:                                               ; preds = %2
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %63
  %67 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %68 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PBLK_LINEGC_FULL, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load i64, i64* @PBLK_LINEGC_FULL, align 8
  %74 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %75 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %77 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %76, i32 0, i32 5
  store %struct.list_head* %77, %struct.list_head** %7, align 8
  br label %78

78:                                               ; preds = %72, %66
  br label %192

79:                                               ; preds = %63
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %5, align 8
  %82 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %79
  %86 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %87 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @PBLK_LINEGC_HIGH, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load i64, i64* @PBLK_LINEGC_HIGH, align 8
  %93 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %94 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %96 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %95, i32 0, i32 4
  store %struct.list_head* %96, %struct.list_head** %7, align 8
  br label %97

97:                                               ; preds = %91, %85
  br label %191

98:                                               ; preds = %79
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %5, align 8
  %101 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %98
  %105 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %106 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @PBLK_LINEGC_MID, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load i64, i64* @PBLK_LINEGC_MID, align 8
  %112 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %113 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %115 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %114, i32 0, i32 3
  store %struct.list_head* %115, %struct.list_head** %7, align 8
  br label %116

116:                                              ; preds = %110, %104
  br label %190

117:                                              ; preds = %98
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %120 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %136

123:                                              ; preds = %117
  %124 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %125 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @PBLK_LINEGC_LOW, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %123
  %130 = load i64, i64* @PBLK_LINEGC_LOW, align 8
  %131 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %132 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %134 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %133, i32 0, i32 2
  store %struct.list_head* %134, %struct.list_head** %7, align 8
  br label %135

135:                                              ; preds = %129, %123
  br label %189

136:                                              ; preds = %117
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %139 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %137, %140
  br i1 %141, label %142, label %155

142:                                              ; preds = %136
  %143 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %144 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @PBLK_LINEGC_EMPTY, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %142
  %149 = load i64, i64* @PBLK_LINEGC_EMPTY, align 8
  %150 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %151 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  %152 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %153 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %152, i32 0, i32 1
  store %struct.list_head* %153, %struct.list_head** %7, align 8
  br label %154

154:                                              ; preds = %148, %142
  br label %188

155:                                              ; preds = %136
  %156 = load i32, i32* @PBLK_LINESTATE_CORRUPT, align 4
  %157 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %158 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 8
  %159 = load %struct.pblk*, %struct.pblk** %3, align 8
  %160 = call i32 @pblk_disk_name(%struct.pblk* %159)
  %161 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %162 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %165 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @trace_pblk_line_state(i32 %160, i32 %163, i32 %166)
  %168 = load i64, i64* @PBLK_LINEGC_NONE, align 8
  %169 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %170 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %169, i32 0, i32 0
  store i64 %168, i64* %170, align 8
  %171 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %172 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %171, i32 0, i32 0
  store %struct.list_head* %172, %struct.list_head** %7, align 8
  %173 = load %struct.pblk*, %struct.pblk** %3, align 8
  %174 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %175 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %9, align 4
  %178 = load %struct.pblk_line*, %struct.pblk_line** %4, align 8
  %179 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %5, align 8
  %182 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %5, align 8
  %185 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @pblk_err(%struct.pblk* %173, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %176, i32 %177, i32 %180, i32 %183, i32 %186)
  br label %188

188:                                              ; preds = %155, %154
  br label %189

189:                                              ; preds = %188, %135
  br label %190

190:                                              ; preds = %189, %116
  br label %191

191:                                              ; preds = %190, %97
  br label %192

192:                                              ; preds = %191, %78
  br label %193

193:                                              ; preds = %192, %62
  %194 = load %struct.list_head*, %struct.list_head** %7, align 8
  ret %struct.list_head* %194
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @pblk_rl_werr_line_in(i32*) #1

declare dso_local i32 @trace_pblk_line_state(i32, i32, i32) #1

declare dso_local i32 @pblk_disk_name(%struct.pblk*) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
