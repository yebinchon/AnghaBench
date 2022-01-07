; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c___load_mappings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c___load_mappings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dm_cache_policy = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"dm_array_cursor_next for mapping failed\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"dm_bitset_cursor_next for dirty failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_cache_metadata*, %struct.dm_cache_policy*, i32, i8*)* @__load_mappings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__load_mappings(%struct.dm_cache_metadata* %0, %struct.dm_cache_policy* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_cache_metadata*, align 8
  %7 = alloca %struct.dm_cache_policy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dm_cache_metadata* %0, %struct.dm_cache_metadata** %6, align 8
  store %struct.dm_cache_policy* %1, %struct.dm_cache_policy** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %14 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %7, align 8
  %15 = call i32 @hints_array_available(%struct.dm_cache_metadata* %13, %struct.dm_cache_policy* %14)
  store i32 %15, i32* %12, align 4
  %16 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %17 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @from_cblock(i32 %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %185

22:                                               ; preds = %4
  %23 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %24 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %23, i32 0, i32 9
  %25 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %26 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %29 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %28, i32 0, i32 2
  %30 = call i32 @dm_array_cursor_begin(i32* %24, i32 %27, i32* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %185

35:                                               ; preds = %22
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  %39 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %40 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %39, i32 0, i32 7
  %41 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %42 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %45 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %44, i32 0, i32 1
  %46 = call i32 @dm_array_cursor_begin(i32* %40, i32 %43, i32* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %51 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %50, i32 0, i32 2
  %52 = call i32 @dm_array_cursor_end(i32* %51)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %185

54:                                               ; preds = %38
  br label %55

55:                                               ; preds = %54, %35
  %56 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %57 = call i64 @separate_dirty_bits(%struct.dm_cache_metadata* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %55
  %60 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %61 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %60, i32 0, i32 5
  %62 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %63 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %66 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @from_cblock(i32 %67)
  %69 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %70 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %69, i32 0, i32 0
  %71 = call i32 @dm_bitset_cursor_begin(i32* %61, i32 %64, i32 %68, i32* %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %59
  %75 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %76 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %75, i32 0, i32 1
  %77 = call i32 @dm_array_cursor_end(i32* %76)
  %78 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %79 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %78, i32 0, i32 2
  %80 = call i32 @dm_array_cursor_end(i32* %79)
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %5, align 4
  br label %185

82:                                               ; preds = %59
  br label %83

83:                                               ; preds = %82, %55
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %161, %83
  %85 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %86 = call i64 @separate_dirty_bits(%struct.dm_cache_metadata* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %84
  %89 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %93 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %92, i32 0, i32 2
  %94 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %95 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %94, i32 0, i32 1
  %96 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %97 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %96, i32 0, i32 0
  %98 = load i32, i32* %8, align 4
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @__load_mapping_v2(%struct.dm_cache_metadata* %89, i32 %90, i32 %91, i32* %93, i32* %95, i32* %97, i32 %98, i8* %99)
  store i32 %100, i32* %10, align 4
  br label %112

101:                                              ; preds = %84
  %102 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %106 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %105, i32 0, i32 2
  %107 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %108 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %107, i32 0, i32 1
  %109 = load i32, i32* %8, align 4
  %110 = load i8*, i8** %9, align 8
  %111 = call i32 @__load_mapping_v1(%struct.dm_cache_metadata* %102, i32 %103, i32 %104, i32* %106, i32* %108, i32 %109, i8* %110)
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %101, %88
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %165

116:                                              ; preds = %112
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %119 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @from_cblock(i32 %120)
  %122 = sub nsw i32 %121, 1
  %123 = icmp sge i32 %117, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  br label %164

125:                                              ; preds = %116
  %126 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %127 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %126, i32 0, i32 2
  %128 = call i32 @dm_array_cursor_next(i32* %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  %132 = call i32 @DMERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %165

133:                                              ; preds = %125
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %133
  %137 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %138 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %137, i32 0, i32 1
  %139 = call i32 @dm_array_cursor_next(i32* %138)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %144 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %143, i32 0, i32 1
  %145 = call i32 @dm_array_cursor_end(i32* %144)
  store i32 0, i32* %12, align 4
  br label %146

146:                                              ; preds = %142, %136
  br label %147

147:                                              ; preds = %146, %133
  %148 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %149 = call i64 @separate_dirty_bits(%struct.dm_cache_metadata* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %147
  %152 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %153 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %152, i32 0, i32 0
  %154 = call i32 @dm_bitset_cursor_next(i32* %153)
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %151
  %158 = call i32 @DMERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %165

159:                                              ; preds = %151
  br label %160

160:                                              ; preds = %159, %147
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %11, align 4
  br label %84

164:                                              ; preds = %124
  br label %165

165:                                              ; preds = %164, %157, %131, %115
  %166 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %167 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %166, i32 0, i32 2
  %168 = call i32 @dm_array_cursor_end(i32* %167)
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %165
  %172 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %173 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %172, i32 0, i32 1
  %174 = call i32 @dm_array_cursor_end(i32* %173)
  br label %175

175:                                              ; preds = %171, %165
  %176 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %177 = call i64 @separate_dirty_bits(%struct.dm_cache_metadata* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %175
  %180 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  %181 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %180, i32 0, i32 0
  %182 = call i32 @dm_bitset_cursor_end(i32* %181)
  br label %183

183:                                              ; preds = %179, %175
  %184 = load i32, i32* %10, align 4
  store i32 %184, i32* %5, align 4
  br label %185

185:                                              ; preds = %183, %74, %49, %33, %21
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local i32 @hints_array_available(%struct.dm_cache_metadata*, %struct.dm_cache_policy*) #1

declare dso_local i32 @from_cblock(i32) #1

declare dso_local i32 @dm_array_cursor_begin(i32*, i32, i32*) #1

declare dso_local i32 @dm_array_cursor_end(i32*) #1

declare dso_local i64 @separate_dirty_bits(%struct.dm_cache_metadata*) #1

declare dso_local i32 @dm_bitset_cursor_begin(i32*, i32, i32, i32*) #1

declare dso_local i32 @__load_mapping_v2(%struct.dm_cache_metadata*, i32, i32, i32*, i32*, i32*, i32, i8*) #1

declare dso_local i32 @__load_mapping_v1(%struct.dm_cache_metadata*, i32, i32, i32*, i32*, i32, i8*) #1

declare dso_local i32 @dm_array_cursor_next(i32*) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @dm_bitset_cursor_next(i32*) #1

declare dso_local i32 @dm_bitset_cursor_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
