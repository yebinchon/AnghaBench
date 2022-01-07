; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_recover_mblocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_recover_mblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Metadata set %u invalid: recovering\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_metadata*, i32)* @dmz_recover_mblocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_recover_mblocks(%struct.dmz_metadata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmz_metadata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = xor i32 %10, 1
  store i32 %11, i32* %6, align 4
  %12 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %13 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %12, i32 0, i32 3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @dmz_dev_warn(%struct.TYPE_5__* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %21 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %22 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @dmz_start_block(%struct.dmz_metadata* %20, i32 %23)
  %25 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %26 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i64 %24, i64* %29, align 8
  br label %53

30:                                               ; preds = %2
  %31 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %32 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %38 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %41 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %40, i32 0, i32 3
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %39, %44
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %36, %46
  %48 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %49 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i64 %47, i64* %52, align 8
  br label %53

53:                                               ; preds = %30, %19
  %54 = load i32, i32* @GFP_NOIO, align 4
  %55 = call %struct.page* @alloc_page(i32 %54)
  store %struct.page* %55, %struct.page** %7, align 8
  %56 = load %struct.page*, %struct.page** %7, align 8
  %57 = icmp ne %struct.page* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %168

61:                                               ; preds = %53
  store i32 1, i32* %8, align 4
  br label %62

62:                                               ; preds = %107, %61
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %65 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %110

68:                                               ; preds = %62
  %69 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %70 = load i32, i32* @REQ_OP_READ, align 4
  %71 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %72 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = load %struct.page*, %struct.page** %7, align 8
  %83 = call i32 @dmz_rdwr_block(%struct.dmz_metadata* %69, i32 %70, i64 %81, %struct.page* %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %68
  br label %164

87:                                               ; preds = %68
  %88 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %89 = load i32, i32* @REQ_OP_WRITE, align 4
  %90 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %91 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %90, i32 0, i32 2
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %97, %99
  %101 = load %struct.page*, %struct.page** %7, align 8
  %102 = call i32 @dmz_rdwr_block(%struct.dmz_metadata* %88, i32 %89, i64 %100, %struct.page* %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %87
  br label %164

106:                                              ; preds = %87
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %62

110:                                              ; preds = %62
  %111 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %112 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %111, i32 0, i32 2
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = icmp ne %struct.TYPE_6__* %118, null
  br i1 %119, label %160, label %120

120:                                              ; preds = %110
  %121 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %122 = call %struct.TYPE_6__* @dmz_alloc_mblock(%struct.dmz_metadata* %121, i32 0)
  %123 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %124 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %123, i32 0, i32 2
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  store %struct.TYPE_6__* %122, %struct.TYPE_6__** %129, align 8
  %130 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %131 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %130, i32 0, i32 2
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = icmp ne %struct.TYPE_6__* %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %120
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %9, align 4
  br label %164

142:                                              ; preds = %120
  %143 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %144 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %143, i32 0, i32 2
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = load i32, i32* %5, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %154 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %153, i32 0, i32 2
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  store i32 %152, i32* %159, align 8
  br label %160

160:                                              ; preds = %142, %110
  %161 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %162 = load i32, i32* %5, align 4
  %163 = call i32 @dmz_write_sb(%struct.dmz_metadata* %161, i32 %162)
  store i32 %163, i32* %9, align 4
  br label %164

164:                                              ; preds = %160, %139, %105, %86
  %165 = load %struct.page*, %struct.page** %7, align 8
  %166 = call i32 @__free_pages(%struct.page* %165, i32 0)
  %167 = load i32, i32* %9, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %164, %58
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @dmz_dev_warn(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i64 @dmz_start_block(%struct.dmz_metadata*, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @dmz_rdwr_block(%struct.dmz_metadata*, i32, i64, %struct.page*) #1

declare dso_local %struct.TYPE_6__* @dmz_alloc_mblock(%struct.dmz_metadata*, i32) #1

declare dso_local i32 @dmz_write_sb(%struct.dmz_metadata*, i32) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
