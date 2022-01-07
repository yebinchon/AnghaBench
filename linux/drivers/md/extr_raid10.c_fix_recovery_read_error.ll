; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_fix_recovery_read_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_fix_recovery_read_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r10bio = type { i32, %struct.TYPE_6__*, %struct.mddev* }
%struct.TYPE_6__ = type { i32, i64, %struct.bio* }
%struct.bio = type { i32 }
%struct.mddev = type { i32, i32, %struct.r10conf* }
%struct.r10conf = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.md_rdev* }
%struct.md_rdev = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_8__ = type { %struct.page** }

@PAGE_SIZE = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@WriteErrorSeen = common dso_local global i32 0, align 4
@WantReplacement = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"md/raid10:%s: recovery aborted due to read error\0A\00", align 1
@MD_RECOVERY_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r10bio*)* @fix_recovery_read_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_recovery_read_error(%struct.r10bio* %0) #0 {
  %2 = alloca %struct.r10bio*, align 8
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.r10conf*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.md_rdev*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.md_rdev*, align 8
  store %struct.r10bio* %0, %struct.r10bio** %2, align 8
  %17 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %18 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %17, i32 0, i32 2
  %19 = load %struct.mddev*, %struct.mddev** %18, align 8
  store %struct.mddev* %19, %struct.mddev** %3, align 8
  %20 = load %struct.mddev*, %struct.mddev** %3, align 8
  %21 = getelementptr inbounds %struct.mddev, %struct.mddev* %20, i32 0, i32 2
  %22 = load %struct.r10conf*, %struct.r10conf** %21, align 8
  store %struct.r10conf* %22, %struct.r10conf** %4, align 8
  %23 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %24 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load %struct.bio*, %struct.bio** %27, align 8
  store %struct.bio* %28, %struct.bio** %5, align 8
  store i64 0, i64* %6, align 8
  %29 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %30 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %32 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %33 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %9, align 4
  %38 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %39 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %10, align 4
  %44 = load %struct.bio*, %struct.bio** %5, align 8
  %45 = call %struct.TYPE_8__* @get_resync_pages(%struct.bio* %44)
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.page**, %struct.page*** %46, align 8
  store %struct.page** %47, %struct.page*** %11, align 8
  br label %48

48:                                               ; preds = %200, %1
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %210

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = ashr i32 %54, 9
  %56 = icmp sgt i32 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = ashr i32 %58, 9
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %57, %51
  %61 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %62 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load %struct.md_rdev*, %struct.md_rdev** %67, align 8
  store %struct.md_rdev* %68, %struct.md_rdev** %13, align 8
  %69 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %70 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = add nsw i64 %74, %75
  store i64 %76, i64* %14, align 8
  %77 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %78 = load i64, i64* %14, align 8
  %79 = load i32, i32* %12, align 4
  %80 = shl i32 %79, 9
  %81 = load %struct.page**, %struct.page*** %11, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.page*, %struct.page** %81, i64 %83
  %85 = load %struct.page*, %struct.page** %84, align 8
  %86 = load i32, i32* @REQ_OP_READ, align 4
  %87 = call i32 @sync_page_io(%struct.md_rdev* %77, i64 %78, i32 %80, %struct.page* %85, i32 %86, i32 0, i32 0)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %139

90:                                               ; preds = %60
  %91 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %92 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load %struct.md_rdev*, %struct.md_rdev** %97, align 8
  store %struct.md_rdev* %98, %struct.md_rdev** %13, align 8
  %99 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %100 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %6, align 8
  %106 = add nsw i64 %104, %105
  store i64 %106, i64* %14, align 8
  %107 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %108 = load i64, i64* %14, align 8
  %109 = load i32, i32* %12, align 4
  %110 = shl i32 %109, 9
  %111 = load %struct.page**, %struct.page*** %11, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.page*, %struct.page** %111, i64 %113
  %115 = load %struct.page*, %struct.page** %114, align 8
  %116 = load i32, i32* @REQ_OP_WRITE, align 4
  %117 = call i32 @sync_page_io(%struct.md_rdev* %107, i64 %108, i32 %110, %struct.page* %115, i32 %116, i32 0, i32 0)
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %15, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %138, label %120

120:                                              ; preds = %90
  %121 = load i32, i32* @WriteErrorSeen, align 4
  %122 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %123 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %122, i32 0, i32 1
  %124 = call i32 @set_bit(i32 %121, i32* %123)
  %125 = load i32, i32* @WantReplacement, align 4
  %126 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %127 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %126, i32 0, i32 1
  %128 = call i32 @test_and_set_bit(i32 %125, i32* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %120
  %131 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %132 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %133 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %132, i32 0, i32 0
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = call i32 @set_bit(i32 %131, i32* %135)
  br label %137

137:                                              ; preds = %130, %120
  br label %138

138:                                              ; preds = %137, %90
  br label %139

139:                                              ; preds = %138, %60
  %140 = load i32, i32* %15, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %200, label %142

142:                                              ; preds = %139
  %143 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %144 = load i64, i64* %14, align 8
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @rdev_set_badblocks(%struct.md_rdev* %143, i64 %144, i32 %145, i32 0)
  %147 = load %struct.md_rdev*, %struct.md_rdev** %13, align 8
  %148 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %149 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %148, i32 0, i32 0
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load %struct.md_rdev*, %struct.md_rdev** %154, align 8
  %156 = icmp ne %struct.md_rdev* %147, %155
  br i1 %156, label %157, label %199

157:                                              ; preds = %142
  %158 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %159 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %158, i32 0, i32 0
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  %165 = load %struct.md_rdev*, %struct.md_rdev** %164, align 8
  store %struct.md_rdev* %165, %struct.md_rdev** %16, align 8
  %166 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %167 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %166, i32 0, i32 1
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i64 1
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* %6, align 8
  %173 = add nsw i64 %171, %172
  store i64 %173, i64* %14, align 8
  %174 = load %struct.md_rdev*, %struct.md_rdev** %16, align 8
  %175 = load i64, i64* %14, align 8
  %176 = load i32, i32* %12, align 4
  %177 = call i32 @rdev_set_badblocks(%struct.md_rdev* %174, i64 %175, i32 %176, i32 0)
  store i32 %177, i32* %15, align 4
  %178 = load i32, i32* %15, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %198, label %180

180:                                              ; preds = %157
  %181 = load %struct.mddev*, %struct.mddev** %3, align 8
  %182 = call i32 @mdname(%struct.mddev* %181)
  %183 = call i32 @pr_notice(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %182)
  %184 = load %struct.mddev*, %struct.mddev** %3, align 8
  %185 = getelementptr inbounds %struct.mddev, %struct.mddev* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %188 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %187, i32 0, i32 0
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %188, align 8
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  store i32 %186, i32* %193, align 8
  %194 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %195 = load %struct.mddev*, %struct.mddev** %3, align 8
  %196 = getelementptr inbounds %struct.mddev, %struct.mddev* %195, i32 0, i32 0
  %197 = call i32 @set_bit(i32 %194, i32* %196)
  br label %210

198:                                              ; preds = %157
  br label %199

199:                                              ; preds = %198, %142
  br label %200

200:                                              ; preds = %199, %139
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* %7, align 4
  %203 = sub nsw i32 %202, %201
  store i32 %203, i32* %7, align 4
  %204 = load i32, i32* %12, align 4
  %205 = sext i32 %204 to i64
  %206 = load i64, i64* %6, align 8
  %207 = add nsw i64 %206, %205
  store i64 %207, i64* %6, align 8
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %8, align 4
  br label %48

210:                                              ; preds = %180, %48
  ret void
}

declare dso_local %struct.TYPE_8__* @get_resync_pages(%struct.bio*) #1

declare dso_local i32 @sync_page_io(%struct.md_rdev*, i64, i32, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @rdev_set_badblocks(%struct.md_rdev*, i64, i32, i32) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i32 @mdname(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
