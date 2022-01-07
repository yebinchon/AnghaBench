; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_balloon.c_balloon_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_balloon.c_balloon_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__*, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.work_struct = type { i32 }
%struct.dm_balloon_response = type { i32, i32, i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }

@dm_device = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@PAGES_IN_2M = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Balloon request will be partially fulfilled. %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Not enough memory.\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Balloon floor reached.\00", align 1
@balloon_up_send_buffer = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@DM_BALLOON_RESPONSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Ballooned %u out of %u requested pages.\0A\00", align 1
@DM_INITIALIZED = common dso_local global i32 0, align 4
@trans_id = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Balloon response failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @balloon_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @balloon_up(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_balloon_response*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dm_device, i32 0, i32 2, i32 0), align 4
  store i32 %12, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @PAGES_IN_2M, align 4
  %15 = urem i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON_ONCE(i32 %17)
  store i32 512, i32* %6, align 4
  %19 = call i64 (...) @si_mem_available()
  store i64 %19, i64* %10, align 8
  %20 = call i64 (...) @compute_balloon_floor()
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %1
  %26 = load i64, i64* %10, align 8
  %27 = load i32, i32* %3, align 4
  %28 = zext i32 %27 to i64
  %29 = sub nsw i64 %26, %28
  %30 = load i64, i64* %11, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %25, %1
  %33 = load i64, i64* %10, align 8
  %34 = load i32, i32* %3, align 4
  %35 = zext i32 %34 to i64
  %36 = icmp slt i64 %33, %35
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0)
  %39 = call i32 @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %11, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = sub i64 %44, %45
  br label %48

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i64 [ %46, %43 ], [ 0, %47 ]
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @PAGES_IN_2M, align 4
  %53 = urem i32 %51, %52
  %54 = load i32, i32* %3, align 4
  %55 = sub i32 %54, %53
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %48, %25
  br label %57

57:                                               ; preds = %155, %88, %56
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br i1 %60, label %61, label %156

61:                                               ; preds = %57
  %62 = load i64, i64* @balloon_up_send_buffer, align 8
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = call i32 @memset(i64 %62, i32 0, i32 %63)
  %65 = load i64, i64* @balloon_up_send_buffer, align 8
  %66 = inttoptr i64 %65 to %struct.dm_balloon_response*
  store %struct.dm_balloon_response* %66, %struct.dm_balloon_response** %5, align 8
  %67 = load i32, i32* @DM_BALLOON_RESPONSE, align 4
  %68 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %5, align 8
  %69 = getelementptr inbounds %struct.dm_balloon_response, %struct.dm_balloon_response* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 8
  %71 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %5, align 8
  %72 = getelementptr inbounds %struct.dm_balloon_response, %struct.dm_balloon_response* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  store i32 32, i32* %73, align 8
  %74 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %5, align 8
  %75 = getelementptr inbounds %struct.dm_balloon_response, %struct.dm_balloon_response* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %3, align 4
  %78 = sub i32 %77, %76
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @alloc_balloon_pages(%struct.TYPE_11__* @dm_device, i32 %79, %struct.dm_balloon_response* %80, i32 %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 1
  br i1 %84, label %85, label %89

85:                                               ; preds = %61
  %86 = load i32, i32* %4, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 1, i32* %6, align 4
  br label %57

89:                                               ; preds = %85, %61
  %90 = load i32, i32* %4, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %3, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %92, %89
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dm_device, i32 0, i32 2, i32 0), align 4
  %99 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %97, i32 %98)
  %100 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %5, align 8
  %101 = getelementptr inbounds %struct.dm_balloon_response, %struct.dm_balloon_response* %100, i32 0, i32 0
  store i32 0, i32* %101, align 8
  store i32 1, i32* %8, align 4
  %102 = load i32, i32* @DM_INITIALIZED, align 4
  store i32 %102, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dm_device, i32 0, i32 1), align 8
  br label %103

103:                                              ; preds = %96, %92
  br label %104

104:                                              ; preds = %127, %103
  %105 = call i32 @atomic_inc_return(i32* @trans_id)
  %106 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %5, align 8
  %107 = getelementptr inbounds %struct.dm_balloon_response, %struct.dm_balloon_response* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dm_device, i32 0, i32 0), align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %5, align 8
  %113 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %5, align 8
  %114 = getelementptr inbounds %struct.dm_balloon_response, %struct.dm_balloon_response* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %118 = call i32 @vmbus_sendpacket(i32 %111, %struct.dm_balloon_response* %112, i32 %116, i64 0, i32 %117, i32 0)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @EAGAIN, align 4
  %121 = sub nsw i32 0, %120
  %122 = icmp eq i32 %119, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %104
  %124 = call i32 @msleep(i32 20)
  br label %125

125:                                              ; preds = %123, %104
  %126 = call i32 @post_status(%struct.TYPE_11__* @dm_device)
  br label %127

127:                                              ; preds = %125
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @EAGAIN, align 4
  %130 = sub nsw i32 0, %129
  %131 = icmp eq i32 %128, %130
  br i1 %131, label %104, label %132

132:                                              ; preds = %127
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %155

135:                                              ; preds = %132
  %136 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %137

137:                                              ; preds = %151, %135
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %5, align 8
  %140 = getelementptr inbounds %struct.dm_balloon_response, %struct.dm_balloon_response* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %154

143:                                              ; preds = %137
  %144 = load %struct.dm_balloon_response*, %struct.dm_balloon_response** %5, align 8
  %145 = getelementptr inbounds %struct.dm_balloon_response, %struct.dm_balloon_response* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = call i32 @free_balloon_pages(%struct.TYPE_11__* @dm_device, i32* %149)
  br label %151

151:                                              ; preds = %143
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %137

154:                                              ; preds = %137
  store i32 1, i32* %8, align 4
  br label %155

155:                                              ; preds = %154, %132
  br label %57

156:                                              ; preds = %57
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @si_mem_available(...) #1

declare dso_local i64 @compute_balloon_floor(...) #1

declare dso_local i32 @pr_warn(i8*, i8*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @alloc_balloon_pages(%struct.TYPE_11__*, i32, %struct.dm_balloon_response*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @vmbus_sendpacket(i32, %struct.dm_balloon_response*, i32, i64, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @post_status(%struct.TYPE_11__*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @free_balloon_pages(%struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
