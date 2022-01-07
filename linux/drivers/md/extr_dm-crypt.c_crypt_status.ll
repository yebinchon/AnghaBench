; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i32, %struct.crypt_config* }
%struct.crypt_config = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_2__*, i64, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c":%u:%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c" %llu %s %llu\00", align 1
@DM_CRYPT_SAME_CPU = common dso_local global i32 0, align 4
@DM_CRYPT_NO_OFFLOAD = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@CRYPT_IV_LARGE_SECTORS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c" allow_discards\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c" same_cpu_crypt\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c" submit_from_crypt_cpus\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c" integrity:%u:%s\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c" sector_size:%d\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c" iv_large_sectors\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*, i32, i32, i8*, i32)* @crypt_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypt_status(%struct.dm_target* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.crypt_config*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %16 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %15, i32 0, i32 1
  %17 = load %struct.crypt_config*, %struct.crypt_config** %16, align 8
  store %struct.crypt_config* %17, %struct.crypt_config** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %186 [
    i32 129, label %19
    i32 128, label %22
  ]

19:                                               ; preds = %5
  %20 = load i8*, i8** %9, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 0, i8* %21, align 1
  br label %186

22:                                               ; preds = %5
  %23 = load %struct.crypt_config*, %struct.crypt_config** %11, align 8
  %24 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %23, i32 0, i32 11
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.crypt_config*, %struct.crypt_config** %11, align 8
  %28 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ugt i32 %29, 0
  br i1 %30, label %31, label %65

31:                                               ; preds = %22
  %32 = load %struct.crypt_config*, %struct.crypt_config** %11, align 8
  %33 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.crypt_config*, %struct.crypt_config** %11, align 8
  %38 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.crypt_config*, %struct.crypt_config** %11, align 8
  %41 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %42)
  br label %64

44:                                               ; preds = %31
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %60, %44
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.crypt_config*, %struct.crypt_config** %11, align 8
  %48 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load %struct.crypt_config*, %struct.crypt_config** %11, align 8
  %53 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %52, i32 0, i32 9
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %12, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %12, align 4
  br label %45

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %63, %36
  br label %67

65:                                               ; preds = %22
  %66 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %64
  %68 = load %struct.crypt_config*, %struct.crypt_config** %11, align 8
  %69 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %68, i32 0, i32 8
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.crypt_config*, %struct.crypt_config** %11, align 8
  %72 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %71, i32 0, i32 7
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.crypt_config*, %struct.crypt_config** %11, align 8
  %77 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 %70, i32 %75, i64 %78)
  %80 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %81 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* @DM_CRYPT_SAME_CPU, align 4
  %90 = load %struct.crypt_config*, %struct.crypt_config** %11, align 8
  %91 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %90, i32 0, i32 5
  %92 = call i32 @test_bit(i32 %89, i32* %91)
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* @DM_CRYPT_NO_OFFLOAD, align 4
  %96 = load %struct.crypt_config*, %struct.crypt_config** %11, align 8
  %97 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %96, i32 0, i32 5
  %98 = call i32 @test_bit(i32 %95, i32* %97)
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %14, align 4
  %101 = load %struct.crypt_config*, %struct.crypt_config** %11, align 8
  %102 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @SECTOR_SHIFT, align 4
  %105 = shl i32 1, %104
  %106 = icmp ne i32 %103, %105
  %107 = zext i1 %106 to i32
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* @CRYPT_IV_LARGE_SECTORS, align 4
  %111 = load %struct.crypt_config*, %struct.crypt_config** %11, align 8
  %112 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %111, i32 0, i32 2
  %113 = call i32 @test_bit(i32 %110, i32* %112)
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %14, align 4
  %116 = load %struct.crypt_config*, %struct.crypt_config** %11, align 8
  %117 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %67
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %14, align 4
  br label %123

123:                                              ; preds = %120, %67
  %124 = load i32, i32* %14, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %185

126:                                              ; preds = %123
  %127 = load i32, i32* %14, align 4
  %128 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %127)
  %129 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %130 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %126
  %136 = load i32, i32* @DM_CRYPT_SAME_CPU, align 4
  %137 = load %struct.crypt_config*, %struct.crypt_config** %11, align 8
  %138 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %137, i32 0, i32 5
  %139 = call i32 @test_bit(i32 %136, i32* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %135
  %144 = load i32, i32* @DM_CRYPT_NO_OFFLOAD, align 4
  %145 = load %struct.crypt_config*, %struct.crypt_config** %11, align 8
  %146 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %145, i32 0, i32 5
  %147 = call i32 @test_bit(i32 %144, i32* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %151

151:                                              ; preds = %149, %143
  %152 = load %struct.crypt_config*, %struct.crypt_config** %11, align 8
  %153 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %151
  %157 = load %struct.crypt_config*, %struct.crypt_config** %11, align 8
  %158 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.crypt_config*, %struct.crypt_config** %11, align 8
  %161 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %159, i32 %162)
  br label %164

164:                                              ; preds = %156, %151
  %165 = load %struct.crypt_config*, %struct.crypt_config** %11, align 8
  %166 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @SECTOR_SHIFT, align 4
  %169 = shl i32 1, %168
  %170 = icmp ne i32 %167, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %164
  %172 = load %struct.crypt_config*, %struct.crypt_config** %11, align 8
  %173 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %171, %164
  %177 = load i32, i32* @CRYPT_IV_LARGE_SECTORS, align 4
  %178 = load %struct.crypt_config*, %struct.crypt_config** %11, align 8
  %179 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %178, i32 0, i32 2
  %180 = call i32 @test_bit(i32 %177, i32* %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %176
  %183 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  br label %184

184:                                              ; preds = %182, %176
  br label %185

185:                                              ; preds = %184, %123
  br label %186

186:                                              ; preds = %5, %185, %19
  ret void
}

declare dso_local i32 @DMEMIT(i8*, ...) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
