; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-dust.c_dust_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-dust.c_dust_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.dust_device* }
%struct.dust_device = type { i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SECTOR_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"addbadblock\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"removebadblock\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"queryblock\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%s requires an additional argument\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"disabling read failures on bad sectors\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"enabling read failures on bad sectors\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"countbadblocks\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"countbadblocks: %llu badblock(s) found\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"clearbadblocks\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"%llu%c\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"selected block value out of range\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"invalid number of arguments '%d'\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"unrecognized message '%s' received\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**, i8*, i32)* @dust_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dust_message(%struct.dm_target* %0, i32 %1, i8** %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_target*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dust_device*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8, align 1
  store %struct.dm_target* %0, %struct.dm_target** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %21 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %20, i32 0, i32 0
  %22 = load %struct.dust_device*, %struct.dust_device** %21, align 8
  store %struct.dust_device* %22, %struct.dust_device** %12, align 8
  %23 = load %struct.dust_device*, %struct.dust_device** %12, align 8
  %24 = getelementptr inbounds %struct.dust_device, %struct.dust_device* %23, i32 0, i32 5
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @i_size_read(i32 %29)
  %31 = load i64, i64* @SECTOR_SHIFT, align 8
  %32 = lshr i64 %30, %31
  store i64 %32, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %133

37:                                               ; preds = %5
  %38 = load i8**, i8*** %9, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strcasecmp(i8* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %37
  %44 = load i8**, i8*** %9, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strcasecmp(i8* %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i8**, i8*** %9, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @strcasecmp(i8* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %49, %43, %37
  %56 = load i8**, i8*** %9, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  br label %132

60:                                               ; preds = %49
  %61 = load i8**, i8*** %9, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strcasecmp(i8* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = call i32 (i8*, ...) @DMINFO(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %68 = load %struct.dust_device*, %struct.dust_device** %12, align 8
  %69 = getelementptr inbounds %struct.dust_device, %struct.dust_device* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  store i32 0, i32* %15, align 4
  br label %131

70:                                               ; preds = %60
  %71 = load i8**, i8*** %9, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @strcasecmp(i8* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %70
  %77 = call i32 (i8*, ...) @DMINFO(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %78 = load %struct.dust_device*, %struct.dust_device** %12, align 8
  %79 = getelementptr inbounds %struct.dust_device, %struct.dust_device* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  store i32 0, i32* %15, align 4
  br label %130

80:                                               ; preds = %70
  %81 = load i8**, i8*** %9, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @strcasecmp(i8* %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %99, label %86

86:                                               ; preds = %80
  %87 = load %struct.dust_device*, %struct.dust_device** %12, align 8
  %88 = getelementptr inbounds %struct.dust_device, %struct.dust_device* %87, i32 0, i32 3
  %89 = load i64, i64* %18, align 8
  %90 = call i32 @spin_lock_irqsave(i32* %88, i64 %89)
  %91 = load %struct.dust_device*, %struct.dust_device** %12, align 8
  %92 = getelementptr inbounds %struct.dust_device, %struct.dust_device* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i8*, ...) @DMINFO(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %93)
  %95 = load %struct.dust_device*, %struct.dust_device** %12, align 8
  %96 = getelementptr inbounds %struct.dust_device, %struct.dust_device* %95, i32 0, i32 3
  %97 = load i64, i64* %18, align 8
  %98 = call i32 @spin_unlock_irqrestore(i32* %96, i64 %97)
  store i32 0, i32* %15, align 4
  br label %129

99:                                               ; preds = %80
  %100 = load i8**, i8*** %9, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @strcasecmp(i8* %102, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %99
  %106 = load %struct.dust_device*, %struct.dust_device** %12, align 8
  %107 = call i32 @dust_clear_badblocks(%struct.dust_device* %106)
  store i32 %107, i32* %15, align 4
  br label %128

108:                                              ; preds = %99
  %109 = load i8**, i8*** %9, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @strcasecmp(i8* %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %126, label %114

114:                                              ; preds = %108
  %115 = load %struct.dust_device*, %struct.dust_device** %12, align 8
  %116 = getelementptr inbounds %struct.dust_device, %struct.dust_device* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load %struct.dust_device*, %struct.dust_device** %12, align 8
  %121 = getelementptr inbounds %struct.dust_device, %struct.dust_device* %120, i32 0, i32 1
  store i32 1, i32* %121, align 4
  br label %125

122:                                              ; preds = %114
  %123 = load %struct.dust_device*, %struct.dust_device** %12, align 8
  %124 = getelementptr inbounds %struct.dust_device, %struct.dust_device* %123, i32 0, i32 1
  store i32 0, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %119
  store i32 0, i32* %15, align 4
  br label %127

126:                                              ; preds = %108
  store i32 1, i32* %14, align 4
  br label %127

127:                                              ; preds = %126, %125
  br label %128

128:                                              ; preds = %127, %105
  br label %129

129:                                              ; preds = %128, %86
  br label %130

130:                                              ; preds = %129, %76
  br label %131

131:                                              ; preds = %130, %66
  br label %132

132:                                              ; preds = %131, %55
  br label %195

133:                                              ; preds = %5
  %134 = load i32, i32* %8, align 4
  %135 = icmp eq i32 %134, 2
  br i1 %135, label %136, label %191

136:                                              ; preds = %133
  %137 = load i8**, i8*** %9, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 1
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @sscanf(i8* %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i64* %16, i8* %19)
  %141 = icmp ne i32 %140, 1
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = load i32, i32* %15, align 4
  store i32 %143, i32* %6, align 4
  br label %205

144:                                              ; preds = %136
  %145 = load i64, i64* %16, align 8
  store i64 %145, i64* %17, align 8
  %146 = load i64, i64* %13, align 8
  %147 = load %struct.dust_device*, %struct.dust_device** %12, align 8
  %148 = getelementptr inbounds %struct.dust_device, %struct.dust_device* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @sector_div(i64 %146, i32 %149)
  %151 = load i64, i64* %17, align 8
  %152 = load i64, i64* %13, align 8
  %153 = icmp ugt i64 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %144
  %155 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  %156 = load i32, i32* %15, align 4
  store i32 %156, i32* %6, align 4
  br label %205

157:                                              ; preds = %144
  %158 = load i8**, i8*** %9, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 0
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @strcasecmp(i8* %160, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %157
  %164 = load %struct.dust_device*, %struct.dust_device** %12, align 8
  %165 = load i64, i64* %17, align 8
  %166 = call i32 @dust_add_block(%struct.dust_device* %164, i64 %165)
  store i32 %166, i32* %15, align 4
  br label %190

167:                                              ; preds = %157
  %168 = load i8**, i8*** %9, align 8
  %169 = getelementptr inbounds i8*, i8** %168, i64 0
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @strcasecmp(i8* %170, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %167
  %174 = load %struct.dust_device*, %struct.dust_device** %12, align 8
  %175 = load i64, i64* %17, align 8
  %176 = call i32 @dust_remove_block(%struct.dust_device* %174, i64 %175)
  store i32 %176, i32* %15, align 4
  br label %189

177:                                              ; preds = %167
  %178 = load i8**, i8*** %9, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 0
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @strcasecmp(i8* %180, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %177
  %184 = load %struct.dust_device*, %struct.dust_device** %12, align 8
  %185 = load i64, i64* %17, align 8
  %186 = call i32 @dust_query_block(%struct.dust_device* %184, i64 %185)
  store i32 %186, i32* %15, align 4
  br label %188

187:                                              ; preds = %177
  store i32 1, i32* %14, align 4
  br label %188

188:                                              ; preds = %187, %183
  br label %189

189:                                              ; preds = %188, %173
  br label %190

190:                                              ; preds = %189, %163
  br label %194

191:                                              ; preds = %133
  %192 = load i32, i32* %8, align 4
  %193 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i32 %192)
  br label %194

194:                                              ; preds = %191, %190
  br label %195

195:                                              ; preds = %194, %132
  %196 = load i32, i32* %14, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %195
  %199 = load i8**, i8*** %9, align 8
  %200 = getelementptr inbounds i8*, i8** %199, i64 0
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i8* %201)
  br label %203

203:                                              ; preds = %198, %195
  %204 = load i32, i32* %15, align 4
  store i32 %204, i32* %6, align 4
  br label %205

205:                                              ; preds = %203, %154, %142
  %206 = load i32, i32* %6, align 4
  ret i32 %206
}

declare dso_local i64 @i_size_read(i32) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @DMERR(i8*, ...) #1

declare dso_local i32 @DMINFO(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dust_clear_badblocks(%struct.dust_device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i8*) #1

declare dso_local i32 @sector_div(i64, i32) #1

declare dso_local i32 @dust_add_block(%struct.dust_device*, i64) #1

declare dso_local i32 @dust_remove_block(%struct.dust_device*, i64) #1

declare dso_local i32 @dust_query_block(%struct.dust_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
