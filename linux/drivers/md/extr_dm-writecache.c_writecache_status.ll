; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.dm_writecache* }
%struct.dm_writecache = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"%ld %llu %llu %llu\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%c %s %s %u \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c" start_sector %llu\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c" high_watermark %u\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c" low_watermark %u\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c" writeback_jobs %u\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c" autocommit_blocks %u\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c" autocommit_time %u\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c" %sfua\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*, i32, i32, i8*, i32)* @writecache_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writecache_status(%struct.dm_target* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dm_writecache*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %16 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %15, i32 0, i32 0
  %17 = load %struct.dm_writecache*, %struct.dm_writecache** %16, align 8
  store %struct.dm_writecache* %17, %struct.dm_writecache** %11, align 8
  store i32 0, i32* %13, align 4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %215 [
    i32 129, label %19
    i32 128, label %33
  ]

19:                                               ; preds = %5
  %20 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %21 = call i32 @writecache_has_error(%struct.dm_writecache* %20)
  %22 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %23 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %27 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %26, i32 0, i32 18
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %30 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %29, i32 0, i32 17
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %21, i64 %25, i64 %28, i64 %31)
  br label %215

33:                                               ; preds = %5
  %34 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %35 = call i32 @WC_MODE_PMEM(%struct.dm_writecache* %34)
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 112, i32 115
  %39 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %40 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %39, i32 0, i32 16
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %45 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %44, i32 0, i32 15
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %50 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %49, i32 0, i32 14
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %43, i32 %48, i32 %51)
  store i32 0, i32* %12, align 4
  %53 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %54 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %53, i32 0, i32 13
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %33
  %58 = load i32, i32* %12, align 4
  %59 = add i32 %58, 2
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %57, %33
  %61 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %62 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %61, i32 0, i32 12
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %12, align 4
  %67 = add i32 %66, 2
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %65, %60
  %69 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %70 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %69, i32 0, i32 10
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* %12, align 4
  %75 = add i32 %74, 2
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %73, %68
  %77 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %78 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* %12, align 4
  %83 = add i32 %82, 2
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %81, %76
  %85 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %86 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* %12, align 4
  %91 = add i32 %90, 2
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %89, %84
  %93 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %94 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* %12, align 4
  %99 = add i32 %98, 2
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %97, %92
  %101 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %102 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* %12, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %105, %100
  %109 = load i32, i32* %12, align 4
  %110 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  %111 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %112 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %111, i32 0, i32 13
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %117 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %116, i32 0, i32 13
  %118 = load i64, i64* %117, align 8
  %119 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %118)
  br label %120

120:                                              ; preds = %115, %108
  %121 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %122 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %121, i32 0, i32 12
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %145

125:                                              ; preds = %120
  %126 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %127 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %126, i32 0, i32 11
  %128 = load i32, i32* %127, align 8
  %129 = mul nsw i32 %128, 100
  store i32 %129, i32* %14, align 4
  %130 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %131 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sdiv i32 %132, 2
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %138 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = call i32 @do_div(i32 %136, i64 %140)
  %142 = load i32, i32* %14, align 4
  %143 = sub i32 100, %142
  %144 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %125, %120
  %146 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %147 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %146, i32 0, i32 10
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %170

150:                                              ; preds = %145
  %151 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %152 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %151, i32 0, i32 9
  %153 = load i32, i32* %152, align 8
  %154 = mul nsw i32 %153, 100
  store i32 %154, i32* %14, align 4
  %155 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %156 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sdiv i32 %157, 2
  %159 = load i32, i32* %14, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %14, align 4
  %161 = load i32, i32* %14, align 4
  %162 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %163 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = call i32 @do_div(i32 %161, i64 %165)
  %167 = load i32, i32* %14, align 4
  %168 = sub i32 100, %167
  %169 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %150, %145
  %171 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %172 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %171, i32 0, i32 8
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %177 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %176, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %178)
  br label %180

180:                                              ; preds = %175, %170
  %181 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %182 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %181, i32 0, i32 7
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %180
  %186 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %187 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %186, i32 0, i32 2
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %188)
  br label %190

190:                                              ; preds = %185, %180
  %191 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %192 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %190
  %196 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %197 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 8
  %199 = call i8* @jiffies_to_msecs(i32 %198)
  %200 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %199)
  br label %201

201:                                              ; preds = %195, %190
  %202 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %203 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %201
  %207 = load %struct.dm_writecache*, %struct.dm_writecache** %11, align 8
  %208 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 0
  %211 = zext i1 %210 to i64
  %212 = select i1 %210, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)
  %213 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %212)
  br label %214

214:                                              ; preds = %206, %201
  br label %215

215:                                              ; preds = %5, %214, %19
  ret void
}

declare dso_local i32 @DMEMIT(i8*, ...) #1

declare dso_local i32 @writecache_has_error(%struct.dm_writecache*) #1

declare dso_local i32 @WC_MODE_PMEM(%struct.dm_writecache*) #1

declare dso_local i32 @do_div(i32, i64) #1

declare dso_local i8* @jiffies_to_msecs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
