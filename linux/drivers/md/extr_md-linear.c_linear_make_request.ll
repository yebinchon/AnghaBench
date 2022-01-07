; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-linear.c_linear_make_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-linear.c_linear_make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i32 }
%struct.bio = type { i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.dev_info = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [92 x i8] c"md/linear:%s: make_request: Sector %llu out of bounds on dev %s: %llu sectors, offset %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.bio*)* @linear_make_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linear_make_request(%struct.mddev* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dev_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.bio*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %15 = load i32, i32* @BDEVNAME_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load %struct.bio*, %struct.bio** %5, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %12, align 8
  %23 = load %struct.bio*, %struct.bio** %5, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @REQ_PREFLUSH, align 4
  %27 = and i32 %25, %26
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.mddev*, %struct.mddev** %4, align 8
  %32 = load %struct.bio*, %struct.bio** %5, align 8
  %33 = call i32 @md_flush_request(%struct.mddev* %31, %struct.bio* %32)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %191

34:                                               ; preds = %2
  %35 = load %struct.mddev*, %struct.mddev** %4, align 8
  %36 = load i64, i64* %12, align 8
  %37 = call %struct.dev_info* @which_dev(%struct.mddev* %35, i64 %36)
  store %struct.dev_info* %37, %struct.dev_info** %8, align 8
  %38 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %39 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %42 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %40, %45
  store i64 %46, i64* %9, align 8
  %47 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %48 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %10, align 8
  %50 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %51 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %34
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp slt i64 %59, %60
  br label %62

62:                                               ; preds = %58, %34
  %63 = phi i1 [ true, %34 ], [ %61, %58 ]
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %169

68:                                               ; preds = %62
  %69 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %70 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = call i32 @is_mddev_broken(%struct.TYPE_6__* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load %struct.bio*, %struct.bio** %5, align 8
  %77 = call i32 @bio_io_error(%struct.bio* %76)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %191

78:                                               ; preds = %68
  %79 = load %struct.bio*, %struct.bio** %5, align 8
  %80 = call i64 @bio_end_sector(%struct.bio* %79)
  %81 = load i64, i64* %10, align 8
  %82 = icmp sgt i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %78
  %87 = load %struct.bio*, %struct.bio** %5, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %12, align 8
  %90 = sub nsw i64 %88, %89
  %91 = load i32, i32* @GFP_NOIO, align 4
  %92 = load %struct.mddev*, %struct.mddev** %4, align 8
  %93 = getelementptr inbounds %struct.mddev, %struct.mddev* %92, i32 0, i32 1
  %94 = call %struct.bio* @bio_split(%struct.bio* %87, i64 %90, i32 %91, i32* %93)
  store %struct.bio* %94, %struct.bio** %14, align 8
  %95 = load %struct.bio*, %struct.bio** %14, align 8
  %96 = load %struct.bio*, %struct.bio** %5, align 8
  %97 = call i32 @bio_chain(%struct.bio* %95, %struct.bio* %96)
  %98 = load %struct.bio*, %struct.bio** %5, align 8
  %99 = call i32 @generic_make_request(%struct.bio* %98)
  %100 = load %struct.bio*, %struct.bio** %14, align 8
  store %struct.bio* %100, %struct.bio** %5, align 8
  br label %101

101:                                              ; preds = %86, %78
  %102 = load %struct.bio*, %struct.bio** %5, align 8
  %103 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %104 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %103, i32 0, i32 1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @bio_set_dev(%struct.bio* %102, i32 %107)
  %109 = load %struct.bio*, %struct.bio** %5, align 8
  %110 = getelementptr inbounds %struct.bio, %struct.bio* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = sub nsw i64 %112, %113
  %115 = load i64, i64* %11, align 8
  %116 = add nsw i64 %114, %115
  %117 = load %struct.bio*, %struct.bio** %5, align 8
  %118 = getelementptr inbounds %struct.bio, %struct.bio* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  store i64 %116, i64* %119, align 8
  %120 = load %struct.bio*, %struct.bio** %5, align 8
  %121 = call i64 @bio_op(%struct.bio* %120)
  %122 = load i64, i64* @REQ_OP_DISCARD, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %101
  %125 = load %struct.bio*, %struct.bio** %5, align 8
  %126 = getelementptr inbounds %struct.bio, %struct.bio* %125, i32 0, i32 2
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @blk_queue_discard(i32 %129)
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  br label %133

133:                                              ; preds = %124, %101
  %134 = phi i1 [ false, %101 ], [ %132, %124 ]
  %135 = zext i1 %134 to i32
  %136 = call i64 @unlikely(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load %struct.bio*, %struct.bio** %5, align 8
  %140 = call i32 @bio_endio(%struct.bio* %139)
  br label %168

141:                                              ; preds = %133
  %142 = load %struct.mddev*, %struct.mddev** %4, align 8
  %143 = getelementptr inbounds %struct.mddev, %struct.mddev* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %141
  %147 = load %struct.bio*, %struct.bio** %5, align 8
  %148 = getelementptr inbounds %struct.bio, %struct.bio* %147, i32 0, i32 2
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.bio*, %struct.bio** %5, align 8
  %153 = load %struct.mddev*, %struct.mddev** %4, align 8
  %154 = getelementptr inbounds %struct.mddev, %struct.mddev* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @disk_devt(i64 %155)
  %157 = load i64, i64* %12, align 8
  %158 = call i32 @trace_block_bio_remap(i32 %151, %struct.bio* %152, i32 %156, i64 %157)
  br label %159

159:                                              ; preds = %146, %141
  %160 = load %struct.mddev*, %struct.mddev** %4, align 8
  %161 = load %struct.bio*, %struct.bio** %5, align 8
  %162 = call i32 @mddev_check_writesame(%struct.mddev* %160, %struct.bio* %161)
  %163 = load %struct.mddev*, %struct.mddev** %4, align 8
  %164 = load %struct.bio*, %struct.bio** %5, align 8
  %165 = call i32 @mddev_check_write_zeroes(%struct.mddev* %163, %struct.bio* %164)
  %166 = load %struct.bio*, %struct.bio** %5, align 8
  %167 = call i32 @generic_make_request(%struct.bio* %166)
  br label %168

168:                                              ; preds = %159, %138
  store i32 1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %191

169:                                              ; preds = %67
  %170 = load %struct.mddev*, %struct.mddev** %4, align 8
  %171 = call i32 @mdname(%struct.mddev* %170)
  %172 = load %struct.bio*, %struct.bio** %5, align 8
  %173 = getelementptr inbounds %struct.bio, %struct.bio* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %177 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %176, i32 0, i32 1
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @bdevname(i32 %180, i8* %18)
  %182 = load %struct.dev_info*, %struct.dev_info** %8, align 8
  %183 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %182, i32 0, i32 1
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* %9, align 8
  %188 = call i32 @pr_err(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), i32 %171, i64 %175, i32 %181, i64 %186, i64 %187)
  %189 = load %struct.bio*, %struct.bio** %5, align 8
  %190 = call i32 @bio_io_error(%struct.bio* %189)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %191

191:                                              ; preds = %169, %168, %75, %30
  %192 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %192)
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @md_flush_request(%struct.mddev*, %struct.bio*) #2

declare dso_local %struct.dev_info* @which_dev(%struct.mddev*, i64) #2

declare dso_local i32 @is_mddev_broken(%struct.TYPE_6__*, i8*) #2

declare dso_local i32 @bio_io_error(%struct.bio*) #2

declare dso_local i64 @bio_end_sector(%struct.bio*) #2

declare dso_local %struct.bio* @bio_split(%struct.bio*, i64, i32, i32*) #2

declare dso_local i32 @bio_chain(%struct.bio*, %struct.bio*) #2

declare dso_local i32 @generic_make_request(%struct.bio*) #2

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #2

declare dso_local i64 @bio_op(%struct.bio*) #2

declare dso_local i32 @blk_queue_discard(i32) #2

declare dso_local i32 @bio_endio(%struct.bio*) #2

declare dso_local i32 @trace_block_bio_remap(i32, %struct.bio*, i32, i64) #2

declare dso_local i32 @disk_devt(i64) #2

declare dso_local i32 @mddev_check_writesame(%struct.mddev*, %struct.bio*) #2

declare dso_local i32 @mddev_check_write_zeroes(%struct.mddev*, %struct.bio*) #2

declare dso_local i32 @pr_err(i8*, i32, i64, i32, i64, i64) #2

declare dso_local i32 @mdname(%struct.mddev*) #2

declare dso_local i32 @bdevname(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
