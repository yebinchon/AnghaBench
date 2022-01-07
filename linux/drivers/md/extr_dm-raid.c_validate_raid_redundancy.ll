; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_validate_raid_redundancy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_validate_raid_redundancy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { %struct.TYPE_8__*, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@In_sync = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Bogus raid10 data copies < 2!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raid_set*)* @validate_raid_redundancy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_raid_redundancy(%struct.raid_set* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.raid_set*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.raid_set* %0, %struct.raid_set** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %44, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %13 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %11, %15
  br i1 %16, label %17, label %47

17:                                               ; preds = %10
  %18 = load i32, i32* @In_sync, align 4
  %19 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %20 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = call i32 @test_bit(i32 %18, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %17
  %30 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %31 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %29, %17
  %41 = load i32, i32* %5, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %29
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %10

47:                                               ; preds = %10
  %48 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %49 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %212 [
    i32 0, label %52
    i32 1, label %53
    i32 4, label %62
    i32 5, label %62
    i32 6, label %62
    i32 10, label %72
  ]

52:                                               ; preds = %47
  br label %219

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %56 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp uge i32 %54, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %220

61:                                               ; preds = %53
  br label %219

62:                                               ; preds = %47, %47, %47
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %65 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %64, i32 0, i32 2
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ugt i32 %63, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %220

71:                                               ; preds = %62
  br label %219

72:                                               ; preds = %47
  %73 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %74 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @raid10_md_layout_to_copies(i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ult i32 %78, 2
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = call i32 @DMERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %223

84:                                               ; preds = %72
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %219

89:                                               ; preds = %84
  %90 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %91 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @__is_raid10_near(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %144

96:                                               ; preds = %89
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %140, %96
  %98 = load i32, i32* %4, align 4
  %99 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %100 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ult i32 %98, %102
  br i1 %103, label %104, label %143

104:                                              ; preds = %97
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %7, align 4
  %107 = urem i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %104
  store i32 0, i32* %6, align 4
  br label %110

110:                                              ; preds = %109, %104
  %111 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %112 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = load i32, i32* %4, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %110
  %122 = load i32, i32* @In_sync, align 4
  %123 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %124 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %123, i32 0, i32 0
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = call i32 @test_bit(i32 %122, i32* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %121, %110
  %134 = load i32, i32* %6, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp uge i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %220

139:                                              ; preds = %133, %121
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %4, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %4, align 4
  br label %97

143:                                              ; preds = %97
  br label %219

144:                                              ; preds = %89
  %145 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %146 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = udiv i32 %148, %149
  store i32 %150, i32* %8, align 4
  %151 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %152 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = udiv i32 %154, %155
  %157 = sub i32 %156, 1
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %9, align 4
  %160 = mul i32 %159, %158
  store i32 %160, i32* %9, align 4
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %208, %144
  %162 = load i32, i32* %4, align 4
  %163 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %164 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp ult i32 %162, %166
  br i1 %167, label %168, label %211

168:                                              ; preds = %161
  %169 = load i32, i32* %4, align 4
  %170 = load i32, i32* %7, align 4
  %171 = urem i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %168
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* %9, align 4
  %176 = icmp ugt i32 %174, %175
  br i1 %176, label %178, label %177

177:                                              ; preds = %173
  store i32 0, i32* %6, align 4
  br label %178

178:                                              ; preds = %177, %173, %168
  %179 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %180 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %179, i32 0, i32 0
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %180, align 8
  %182 = load i32, i32* %4, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %178
  %190 = load i32, i32* @In_sync, align 4
  %191 = load %struct.raid_set*, %struct.raid_set** %3, align 8
  %192 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %191, i32 0, i32 0
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %192, align 8
  %194 = load i32, i32* %4, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = call i32 @test_bit(i32 %190, i32* %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %207, label %201

201:                                              ; preds = %189, %178
  %202 = load i32, i32* %6, align 4
  %203 = add i32 %202, 1
  store i32 %203, i32* %6, align 4
  %204 = load i32, i32* %7, align 4
  %205 = icmp uge i32 %203, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  br label %220

207:                                              ; preds = %201, %189
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %4, align 4
  %210 = add i32 %209, 1
  store i32 %210, i32* %4, align 4
  br label %161

211:                                              ; preds = %161
  br label %219

212:                                              ; preds = %47
  %213 = load i32, i32* %5, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load i32, i32* @EINVAL, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %2, align 4
  br label %223

218:                                              ; preds = %212
  br label %219

219:                                              ; preds = %218, %211, %143, %88, %71, %61, %52
  store i32 0, i32* %2, align 4
  br label %223

220:                                              ; preds = %206, %138, %70, %60
  %221 = load i32, i32* @EINVAL, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %2, align 4
  br label %223

223:                                              ; preds = %220, %219, %215, %80
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @raid10_md_layout_to_copies(i32) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @__is_raid10_near(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
